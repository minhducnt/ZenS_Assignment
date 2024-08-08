import 'dart:developer';

import 'package:backend/data_source/interfaces/joke_data_source.dart';
import 'package:backend/models/jokes/joke.dart';
import 'package:backend/repositories/jokes/interface/joke_repository.dart';
import 'package:backend/typedefs/joke_types.dart';
import 'package:backend/utils/exceptions/http_exception/not_found_exception.dart';
import 'package:backend/utils/exceptions/server_exception/server_exception.dart';
import 'package:backend/utils/failures/failure.dart';
import 'package:backend/utils/failures/server_failure/server_failure.dart';
import 'package:either_dart/either.dart';

/// {@template joke_repository_impl}
/// {@endtemplate}
class JokeRepositoryImpl implements JokeRepository {
  /// {@macro joke_repository_impl}
  JokeRepositoryImpl(this.dataSource);

  /// The data source used to perform CRUD operations
  final JokeDataSource dataSource;

  @override
  Future<Either<Failure, Joke>> createJoke(CreateJokeDto createJokeDto) async {
    try {
      final joke = await dataSource.createJoke(createJokeDto);
      return Right(joke);
    } on ServerException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(message: e.message),
      );
    }
  }

  @override
  Future<Either<Failure, void>> deleteJoke(JokeId id) async {
    try {
      final exists = await getJokeById(id);
      if (exists.isLeft) return exists;
      final joke = await dataSource.deleteJokeById(id);
      return Right(joke);
    } on ServerException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(message: e.message),
      );
    }
  }

  @override
  Future<Either<Failure, Joke>> getJokeById(JokeId id) async {
    try {
      final res = await dataSource.getJokeById(id);
      return Right(res);
    } on NotFoundException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on ServerException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(message: e.message),
      );
    }
  }

  @override
  Future<Either<Failure, List<Joke>>> getJokes() async {
    try {
      return Right(await dataSource.getAllJoke());
    } on ServerException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(message: e.message),
      );
    }
  }

  @override
  Future<Either<Failure, Joke>> updateJoke({
    required JokeId id,
    required UpdateJokeDto updateJokeDto,
  }) async {
    try {
      return Right(
        await dataSource.updateJoke(
          id: id,
          joke: updateJokeDto,
        ),
      );
    } on NotFoundException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(
          message: e.message,
          statusCode: e.statusCode,
        ),
      );
    } on ServerException catch (e) {
      log(e.message);
      return Left(
        ServerFailure(message: e.message),
      );
    }
  }
}
