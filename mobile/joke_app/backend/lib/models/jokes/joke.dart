import 'package:backend/typedefs/joke_types.dart';
import 'package:backend/utils/serializers/date_time_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export './create_joke_dto/create_joke_dto.dart';
export './update_joke_dto/update_joke_dto.dart';

part 'joke.freezed.dart';
part 'joke.g.dart';

///
@freezed
class Joke with _$Joke {
  /// Creates an instance of [Joke].
  ///
  /// The [id], [message] fields are required.
  ///
  /// The [voted] field is optional
  /// and has a default value of false
  ///
  /// The [createdAt] field is required and represents the date and time
  /// when the joke item was created.
  ///
  /// The [updatedAt] field is optional and represents the date and time
  /// when the joke item was last updated.
  factory Joke({
    required JokeId id,
    String? message,
    @Default(false) bool liked,
    @Default(false) bool voted,

    //
    @DateTimeConverterNullable()
    @JsonKey(name: 'created_at')
    DateTime? createdAt,

    //
    @JsonKey(name: 'updated_at')
    @DateTimeConverterNullable()
    DateTime? updatedAt,
  }) = _Joke;

  /// Creates an instance of [Joke] from a JSON object.
  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
}
