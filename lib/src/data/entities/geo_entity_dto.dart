import 'package:json_annotation/json_annotation.dart';

part 'geo_entity_dto.g.dart';

@JsonSerializable()

class GeoEntityDto {
  final String lat;
  final String lng;

  GeoEntityDto({required this.lat, required this.lng});

  factory GeoEntityDto.fromJson(Map<String, dynamic> json) => _$GeoEntityDtoFromJson(json);
  Map<String, dynamic> toJson() => _$GeoEntityDtoToJson(this);
}
