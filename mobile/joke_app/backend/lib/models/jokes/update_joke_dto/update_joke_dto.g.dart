// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_joke_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateJokeDtoImpl _$$UpdateJokeDtoImplFromJson(Map<String, dynamic> json) =>
    _$UpdateJokeDtoImpl(
      message: json['message'] as String?,
      liked: json['liked'] as bool?,
      voted: json['voted'] as bool?,
    );

Map<String, dynamic> _$$UpdateJokeDtoImplToJson(_$UpdateJokeDtoImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'liked': instance.liked,
      'voted': instance.voted,
    };
