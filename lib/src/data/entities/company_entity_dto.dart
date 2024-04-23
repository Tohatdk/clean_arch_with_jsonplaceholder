import 'package:freezed_annotation/freezed_annotation.dart';
part 'company_entity_dto.g.dart';

@JsonSerializable()
class CompanyEntityDto {
  final String name;
  final String catchPhrase;
  final String bs;

  CompanyEntityDto({required this.name, required this.catchPhrase, required this.bs});
  factory CompanyEntityDto.fromJson(Map<String, dynamic> json) => _$CompanyEntityDtoFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyEntityDtoToJson(this);
}