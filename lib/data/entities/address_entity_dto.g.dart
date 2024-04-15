// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressEntityDto _$AddressEntityDtoFromJson(Map<String, dynamic> json) =>
    AddressEntityDto(
      street: json['street'] as String,
      suite: json['suite'] as String,
      city: json['city'] as String,
      zipcode: json['zipcode'] as String,
      geo: GeoEntityDto.fromJson(json['geo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddressEntityDtoToJson(AddressEntityDto instance) =>
    <String, dynamic>{
      'street': instance.street,
      'suite': instance.suite,
      'city': instance.city,
      'zipcode': instance.zipcode,
      'geo': instance.geo.toJson(),
    };
