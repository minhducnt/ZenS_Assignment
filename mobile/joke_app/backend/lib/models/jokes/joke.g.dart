// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$JokeImpl _$$JokeImplFromJson(Map<String, dynamic> json) => _$JokeImpl(
      id: (json['id'] as num).toInt(),
      message: json['message'] as String?,
      liked: json['liked'] as bool? ?? false,
      voted: json['voted'] as bool? ?? false,
      createdAt: const DateTimeConverterNullable().fromJson(json['created_at']),
      updatedAt: const DateTimeConverterNullable().fromJson(json['updated_at']),
    );

Map<String, dynamic> _$$JokeImplToJson(_$JokeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'message': instance.message,
      'liked': instance.liked,
      'voted': instance.voted,
      'created_at':
          const DateTimeConverterNullable().toJson(instance.createdAt),
      'updated_at':
          const DateTimeConverterNullable().toJson(instance.updatedAt),
    };
