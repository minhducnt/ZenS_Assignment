import 'package:backend/utils/failures/validation_failure/validation_failure.dart';
import 'package:either_dart/either.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_joke_dto.freezed.dart';
part 'update_joke_dto.g.dart';

/// {@template update_joke_dto}
/// A data transfer object (DTO) representing a request to update a joke item.
/// {@endtemplate}
@freezed
class UpdateJokeDto with _$UpdateJokeDto {
  /// {@macro update_joke_dto}
  /// Creates an instance of [UpdateJokeDto].
  ///
  /// The [message], and [voted] fields are optional.
  factory UpdateJokeDto({
    String? message,
    bool? liked,
    bool? voted,
  }) = _UpdateJokeDto;

  /// {@macro update_joke_dto}
  /// Creates an instance of [UpdateJokeDto] from a JSON object.
  factory UpdateJokeDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateJokeDtoFromJson(json);

  /// Validates the [UpdateJokeDto] and returns a [ValidationFailure] if the
  /// validation fails.

  static Either<ValidationFailure, UpdateJokeDto> validated(
    Map<String, dynamic> json,
  ) {
    final errors = <String, List<String>>{};
    final message = json['message'] as String?;
    final liked = json['liked'];
    final voted = json['voted'];

    if (message == null || message.isEmpty) {
      errors['message'] = ['At least one field must be provided'];
    }
    if (liked == null) {
      errors['liked'] = ['At least one field must be provided'];
    }
    if (voted == null) {
      errors['voted'] = ['At least one field must be provided'];
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
      return Right(UpdateJokeDto.fromJson(json));
    } catch (e) {
      return const Left(
        ValidationFailure(
          message: 'Invalid JSON format',
        ),
      );
    }
  }
}
