// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserEntityDto _$UserEntityDtoFromJson(Map<String, dynamic> json) =>
    UserEntityDto(
      id: json['id'] as int,
      name: json['name'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      address:
          AddressEntityDto.fromJson(json['address'] as Map<String, dynamic>),
      phone: json['phone'] as String,
      website: json['website'] as String,
      company:
          CompanyEntityDto.fromJson(json['company'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserEntityDtoToJson(UserEntityDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'username': instance.username,
      'email': instance.email,
      'address': instance.address.toJson(),
      'phone': instance.phone,
      'website': instance.website,
      'company': instance.company.toJson(),
    };
