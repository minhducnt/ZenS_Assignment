// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JokeImpl _$$JokeImplFromJson(Map<String, dynamic> json) => _$JokeImpl(
      id: (json['id'] as num?)?.toInt(),
      message: json['message'] as String?,
      voted: json['voted'] as bool? ?? false,
    );

Map<String, dynamic> _$$JokeImplToJson(_$JokeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'voted': instance.voted,
    };
