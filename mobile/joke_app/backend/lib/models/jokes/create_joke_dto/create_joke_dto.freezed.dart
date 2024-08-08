// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_joke_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateJokeDto _$CreateJokeDtoFromJson(Map<String, dynamic> json) {
  return _CreateJokeDto.fromJson(json);
}

/// @nodoc
mixin _$CreateJokeDto {
  String get message => throw _privateConstructorUsedError;

  /// Serializes this CreateJokeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateJokeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateJokeDtoCopyWith<CreateJokeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateJokeDtoCopyWith<$Res> {
  factory $CreateJokeDtoCopyWith(
          CreateJokeDto value, $Res Function(CreateJokeDto) then) =
      _$CreateJokeDtoCopyWithImpl<$Res, CreateJokeDto>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CreateJokeDtoCopyWithImpl<$Res, $Val extends CreateJokeDto>
    implements $CreateJokeDtoCopyWith<$Res> {
  _$CreateJokeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateJokeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateJokeDtoImplCopyWith<$Res>
    implements $CreateJokeDtoCopyWith<$Res> {
  factory _$$CreateJokeDtoImplCopyWith(
          _$CreateJokeDtoImpl value, $Res Function(_$CreateJokeDtoImpl) then) =
      __$$CreateJokeDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CreateJokeDtoImplCopyWithImpl<$Res>
    extends _$CreateJokeDtoCopyWithImpl<$Res, _$CreateJokeDtoImpl>
    implements _$$CreateJokeDtoImplCopyWith<$Res> {
  __$$CreateJokeDtoImplCopyWithImpl(
      _$CreateJokeDtoImpl _value, $Res Function(_$CreateJokeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateJokeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CreateJokeDtoImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateJokeDtoImpl implements _CreateJokeDto {
  _$CreateJokeDtoImpl({required this.message});

  factory _$CreateJokeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateJokeDtoImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'CreateJokeDto(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateJokeDtoImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CreateJokeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateJokeDtoImplCopyWith<_$CreateJokeDtoImpl> get copyWith =>
      __$$CreateJokeDtoImplCopyWithImpl<_$CreateJokeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateJokeDtoImplToJson(
      this,
    );
  }
}

abstract class _CreateJokeDto implements CreateJokeDto {
  factory _CreateJokeDto({required final String message}) = _$CreateJokeDtoImpl;

  factory _CreateJokeDto.fromJson(Map<String, dynamic> json) =
      _$CreateJokeDtoImpl.fromJson;

  @override
  String get message;

  /// Create a copy of CreateJokeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateJokeDtoImplCopyWith<_$CreateJokeDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
