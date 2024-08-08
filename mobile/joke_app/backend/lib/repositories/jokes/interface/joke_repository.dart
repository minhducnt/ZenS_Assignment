import 'package:backend/models/jokes/joke.dart';
import 'package:backend/typedefs/joke_types.dart';
import 'package:backend/utils/failures/failure.dart';
import 'package:either_dart/either.dart';

/// {@template joke_repository}
/// Base class for all joke repositories.
/// {@endtemplate}
abstract class JokeRepository {
  /// Get all jokes.
  Future<Either<Failure, List<Joke>>> getJokes();

  /// Get a joke with the given [id].
  Future<Either<Failure, Joke>> getJokeById(JokeId id);

  /// Create a joke with the given [createJokeDto].
  Future<Either<Failure, Joke>> createJoke(
    CreateJokeDto createJokeDto,
  );

  /// Update a joke with the given [id] and [updateJokeDto].
  Future<Either<Failure, Joke>> updateJoke({
    required JokeId id,
    required UpdateJokeDto updateJokeDto,
  });

  /// Delete a joke with the given [id].
  Future<Either<Failure, void>> deleteJoke(JokeId id);
}
