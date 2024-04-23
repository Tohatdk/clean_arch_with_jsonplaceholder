import 'package:progress_bar/src/domain/entities/photo_entity.dart';

abstract interface class PhotoRepository{
  Future<List<PhotoEntity>> getPhotos();
}