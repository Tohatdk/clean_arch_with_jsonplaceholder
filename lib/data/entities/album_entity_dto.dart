import 'package:json_annotation/json_annotation.dart';

part 'album_entity_dto.g.dart';

@JsonSerializable()
class AlbumEntityDto {
  final int userId;
  final int id;
  final String title;

  AlbumEntityDto({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory AlbumEntityDto.fromJson(Map<String, dynamic> json) => _$AlbumEntityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumEntityDtoToJson(this);
}