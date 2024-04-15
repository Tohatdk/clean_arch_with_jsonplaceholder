

import 'package:progress_bar/data/data_sources/data_source.dart';
import 'package:progress_bar/data/dto_entity_mapper.dart';

import 'package:progress_bar/domain/entities/photo_entity.dart';
import 'package:progress_bar/domain/repository/photo_repository.dart';

class PhotoRepositoryImpl implements PhotoRepository{
  final DataSource _photoDataSource;
  PhotoRepositoryImpl(this._photoDataSource);
  @override
  Future <List<PhotoEntity>> getPhotos()async{
    final dtoPhotoList = await _photoDataSource.getPhotos();
    final photoList = dtoPhotoList.map((e)=>e.toEntity()).toList(growable: false);
    return photoList;
  }
}
