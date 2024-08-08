import 'package:backend/utils/exceptions/http_exception/bad_request_exception.dart';
import 'package:backend/utils/failures/failure.dart';
import 'package:backend/utils/failures/request_failure/request_failure.dart';
import 'package:either_dart/either.dart';

/// The type for a [JokeId].
typedef JokeId = int;

/// Maps a string to a [JokeId].
Either<Failure, JokeId> mapJokeId(String id) {
  try {
    final jokeId = int.tryParse(id);
    if (jokeId == null) throw const BadRequestException(message: 'Invalid id');
    return Right(jokeId);
  } on BadRequestException catch (e) {
    return Left(
      RequestFailure(
        message: e.message,
        statusCode: e.statusCode,
      ),
    );
  }
}
