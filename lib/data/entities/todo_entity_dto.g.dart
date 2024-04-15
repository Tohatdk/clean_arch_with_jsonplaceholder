// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TodoEntityDto _$TodoEntityDtoFromJson(Map<String, dynamic> json) =>
    TodoEntityDto(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$TodoEntityDtoToJson(TodoEntityDto instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
    };
