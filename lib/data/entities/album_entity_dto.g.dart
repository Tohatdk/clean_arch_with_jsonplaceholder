// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumEntityDto _$AlbumEntityDtoFromJson(Map<String, dynamic> json) =>
    AlbumEntityDto(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
    );

Map<String, dynamic> _$AlbumEntityDtoToJson(AlbumEntityDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
    };
