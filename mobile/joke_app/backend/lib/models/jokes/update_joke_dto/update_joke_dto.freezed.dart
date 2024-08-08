// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_joke_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateJokeDto _$UpdateJokeDtoFromJson(Map<String, dynamic> json) {
  return _UpdateJokeDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateJokeDto {
  String? get message => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;
  bool? get voted => throw _privateConstructorUsedError;

  /// Serializes this UpdateJokeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateJokeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateJokeDtoCopyWith<UpdateJokeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateJokeDtoCopyWith<$Res> {
  factory $UpdateJokeDtoCopyWith(
          UpdateJokeDto value, $Res Function(UpdateJokeDto) then) =
      _$UpdateJokeDtoCopyWithImpl<$Res, UpdateJokeDto>;
  @useResult
  $Res call({String? message, bool? liked, bool? voted});
}

/// @nodoc
class _$UpdateJokeDtoCopyWithImpl<$Res, $Val extends UpdateJokeDto>
    implements $UpdateJokeDtoCopyWith<$Res> {
  _$UpdateJokeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateJokeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? liked = freezed,
    Object? voted = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      voted: freezed == voted
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateJokeDtoImplCopyWith<$Res>
    implements $UpdateJokeDtoCopyWith<$Res> {
  factory _$$UpdateJokeDtoImplCopyWith(
          _$UpdateJokeDtoImpl value, $Res Function(_$UpdateJokeDtoImpl) then) =
      __$$UpdateJokeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, bool? liked, bool? voted});
}

/// @nodoc
class __$$UpdateJokeDtoImplCopyWithImpl<$Res>
    extends _$UpdateJokeDtoCopyWithImpl<$Res, _$UpdateJokeDtoImpl>
    implements _$$UpdateJokeDtoImplCopyWith<$Res> {
  __$$UpdateJokeDtoImplCopyWithImpl(
      _$UpdateJokeDtoImpl _value, $Res Function(_$UpdateJokeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateJokeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? liked = freezed,
    Object? voted = freezed,
  }) {
    return _then(_$UpdateJokeDtoImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      voted: freezed == voted
          ? _value.voted
          : voted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateJokeDtoImpl implements _UpdateJokeDto {
  _$UpdateJokeDtoImpl({this.message, this.liked, this.voted});

  factory _$UpdateJokeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateJokeDtoImplFromJson(json);

  @override
  final String? message;
  @override
  final bool? liked;
  @override
  final bool? voted;

  @override
  String toString() {
    return 'UpdateJokeDto(message: $message, liked: $liked, voted: $voted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateJokeDtoImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.voted, voted) || other.voted == voted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message, liked, voted);

  /// Create a copy of UpdateJokeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateJokeDtoImplCopyWith<_$UpdateJokeDtoImpl> get copyWith =>
      __$$UpdateJokeDtoImplCopyWithImpl<_$UpdateJokeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateJokeDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateJokeDto implements UpdateJokeDto {
  factory _UpdateJokeDto(
      {final String? message,
      final bool? liked,
      final bool? voted}) = _$UpdateJokeDtoImpl;

  factory _UpdateJokeDto.fromJson(Map<String, dynamic> json) =
      _$UpdateJokeDtoImpl.fromJson;

  @override
  String? get message;
  @override
  bool? get liked;
  @override
  bool? get voted;

  /// Create a copy of UpdateJokeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateJokeDtoImplCopyWith<_$UpdateJokeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
