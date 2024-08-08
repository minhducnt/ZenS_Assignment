import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke.freezed.dart';
part 'joke.g.dart';

@freezed
abstract class Joke with _$Joke {
  /// Creates an instance of [Joke].
  ///
  /// The [id], [message] fields are required.
  ///
  /// The [voted] field is optional
  /// and has a default value of false
  ///
  factory Joke({
    final int? id,
    final String? message,
    @Default(false) final bool voted,
  }) = _Joke;

  factory Joke.fromJson(Map<String, dynamic> json) => _$JokeFromJson(json);
}
