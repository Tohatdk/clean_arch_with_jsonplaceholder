import 'package:json_annotation/json_annotation.dart';

part 'comment_entity_dto.g.dart';

@JsonSerializable()
class CommentEntityDto {
  final int postId;
  final int id;
  final String name;
  final String email;
  final String body;

  CommentEntityDto({
    required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body,
  });

  factory CommentEntityDto.fromJson(Map<String, dynamic> json) => _$CommentEntityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$CommentEntityDtoToJson(this);
}