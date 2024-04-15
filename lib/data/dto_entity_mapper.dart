import 'package:progress_bar/data/entities/address_entity_dto.dart';
import 'package:progress_bar/data/entities/album_entity_dto.dart';
import 'package:progress_bar/data/entities/comment_entity_dto.dart';
import 'package:progress_bar/data/entities/company_entity_dto.dart';
import 'package:progress_bar/data/entities/geo_entity_dto.dart';
import 'package:progress_bar/data/entities/photo_entity_dto.dart';
import 'package:progress_bar/data/entities/post_entity_dto.dart';
import 'package:progress_bar/data/entities/todo_entity_dto.dart';

import 'package:progress_bar/data/entities/user_entity_dto.dart';
import 'package:progress_bar/domain/entities/address_entity.dart';
import 'package:progress_bar/domain/entities/album_entity.dart';
import 'package:progress_bar/domain/entities/comment_entity.dart';
import 'package:progress_bar/domain/entities/company_entity.dart';
import 'package:progress_bar/domain/entities/geo_entity.dart';
import 'package:progress_bar/domain/entities/photo_entity.dart';
import 'package:progress_bar/domain/entities/post_entity.dart';
import 'package:progress_bar/domain/entities/todo_entity.dart';
import 'package:progress_bar/domain/entities/user_entity.dart';

extension UserMapper on UserEntityDto {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      username: username,
      email: email,
      address: address.toEntity(),
      phone: phone,
      website: website,
      company: company.toEntity(),
    );
  }
}

extension AddressMapper on AddressEntityDto {
  AddressEntity toEntity() {
    return AddressEntity(
      street: street,
      suite: suite,
      city: city,
      zipcode: zipcode,
      geo: geo.toEntity(),
    );
  }
}

extension GeoMapper on GeoEntityDto {
  GeoEntity toEntity() {
    return GeoEntity(
      lat: lat,
      lng: lng,
    );
  }
}

extension CompanyMapper on CompanyEntityDto {
  CompanyEntity toEntity() {
    return CompanyEntity(
      name: name,
      catchPhrase: catchPhrase,
      bs: bs,
    );
  }
}

extension PostMapper on PostEntityDto{
  PostEntity toEntity() {
    return PostEntity(
      userId: userId,
      id: id,
      title: title,
      body: body,

    );
  }
}
extension PhotoMapper on PhotoEntityDto{
  PhotoEntity toEntity(){
    return PhotoEntity(albumId: albumId, id: id, title: title, url: url, thumbnailUrl: thumbnailUrl);
  }
}

extension AlbumMapper on AlbumEntityDto{
  AlbumEntity toEntity(){
    return AlbumEntity(userId: userId, id: id, title: title);
  }
}

extension CommentMapper on CommentEntityDto{
  CommentEntity toEntity(){
    return CommentEntity(postId: postId, id: id, name: name, email: email, body: body);
  }

}
extension TodoMapper on TodoEntityDto{
  TodoEntity toEntity(){
    return TodoEntity(userId: userId, id: id, title: title, completed: completed);
  }
}