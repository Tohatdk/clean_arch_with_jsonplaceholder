
import 'package:progress_bar/src/data/entities/address_entity_dto.dart';
import 'package:progress_bar/src/data/entities/company_entity_dto.dart';

import 'package:json_annotation/json_annotation.dart';

part 'user_entity_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class UserEntityDto {
  final int id;
  final String name;
  final String username;
  final String email;
  final AddressEntityDto address;
  final String phone;
  final String website;
  final CompanyEntityDto company;

  UserEntityDto(
      {required this.id,
        required this.name,
        required this.username,
        required this.email,
        required this.address,
        required this.phone,
        required this.website,
        required this.company});

  /// factory.
  factory UserEntityDto.fromJson(Map<String, dynamic> json) => _$UserEntityDtoFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserEntityDtoToJson(this);
}






