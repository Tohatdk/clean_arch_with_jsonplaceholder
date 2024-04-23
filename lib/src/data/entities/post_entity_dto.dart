import 'package:json_annotation/json_annotation.dart';

part 'post_entity_dto.g.dart';

@JsonSerializable()
class PostEntityDto {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostEntityDto({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory PostEntityDto.fromJson(Map<String, dynamic> json) => _$PostEntityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PostEntityDtoToJson(this);
}