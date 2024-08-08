import 'package:backend/utils/exceptions/http_exception/bad_request_exception.dart';
import 'package:backend/utils/exceptions/http_exception/http_exception.dart';
import 'package:backend/utils/failures/validation_failure/validation_failure.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_joke_dto.freezed.dart';
part 'create_joke_dto.g.dart';

/// {@template create_joke_dto}
/// A data transfer object (DTO) to create a new Joke item
/// {@endtemplate}
@freezed
class CreateJokeDto with _$CreateJokeDto {
  /// Creates an instance of [CreateJokeDto].
  ///
  /// The [message] fields are required.
  factory CreateJokeDto({required String message}) = _CreateJokeDto;

  /// Creates an instance of [CreateJokeDto] from a JSON object.
  factory CreateJokeDto.fromJson(Map<String, dynamic> json) =>
      _$CreateJokeDtoFromJson(json);

  /// Validates the [CreateJokeDto] and throws a [BadRequestException] if the
  /// validation fails.
  static Either<ValidationFailure, CreateJokeDto> validated(
    Map<String, dynamic> json,
  ) {
    final errors = <String, List<String>>{};
    final message = json['message'] as String? ?? '';

    if (message.isEmpty) {
      errors['message'] = ['Message is required'];
    }

    if (errors.isNotEmpty) {
      return Left(
        ValidationFailure(
          message: 'Validation failed',
          errors: errors,
        ),
      );
    }

    try {
      return Right(CreateJokeDto.fromJson(json));
    } catch (e) {
      return const Left(
        ValidationFailure(
          message: 'Invalid JSON format',
        ),
      );
    }
  }
}
