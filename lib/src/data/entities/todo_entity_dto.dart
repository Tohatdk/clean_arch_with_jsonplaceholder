import 'package:json_annotation/json_annotation.dart';

part 'todo_entity_dto.g.dart';

@JsonSerializable()
class TodoEntityDto {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  TodoEntityDto({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  factory TodoEntityDto.fromJson(Map<String, dynamic> json) => _$TodoEntityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$TodoEntityDtoToJson(this);
}
