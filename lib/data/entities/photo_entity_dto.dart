import 'package:json_annotation/json_annotation.dart';

part 'photo_entity_dto.g.dart';

@JsonSerializable()
class PhotoEntityDto {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  PhotoEntityDto({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory PhotoEntityDto.fromJson(Map<String, dynamic> json) => _$PhotoEntityDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoEntityDtoToJson(this);
}