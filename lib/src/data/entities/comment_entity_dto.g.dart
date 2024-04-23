// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentEntityDto _$CommentEntityDtoFromJson(Map<String, dynamic> json) =>
    CommentEntityDto(
      postId: json['postId'] as int,
      id: json['id'] as int,
      name: json['name'] as String,
      email: json['email'] as String,
      body: json['body'] as String,
    );

Map<String, dynamic> _$CommentEntityDtoToJson(CommentEntityDto instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'body': instance.body,
    };
