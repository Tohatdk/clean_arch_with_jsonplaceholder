// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoEntityDto _$PhotoEntityDtoFromJson(Map<String, dynamic> json) =>
    PhotoEntityDto(
      albumId: json['albumId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$PhotoEntityDtoToJson(PhotoEntityDto instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
      'thumbnailUrl': instance.thumbnailUrl,
    };
