// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'company_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CompanyEntityDto _$CompanyEntityDtoFromJson(Map<String, dynamic> json) =>
    CompanyEntityDto(
      name: json['name'] as String,
      catchPhrase: json['catchPhrase'] as String,
      bs: json['bs'] as String,
    );

Map<String, dynamic> _$CompanyEntityDtoToJson(CompanyEntityDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'catchPhrase': instance.catchPhrase,
      'bs': instance.bs,
    };
