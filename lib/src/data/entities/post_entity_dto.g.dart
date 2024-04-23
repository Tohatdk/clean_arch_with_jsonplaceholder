// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostEntityDto _$PostEntityDtoFromJson(Map<String, dynamic> json) =>
    PostEntityDto(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$PostEntityDtoToJson(PostEntityDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
    };
