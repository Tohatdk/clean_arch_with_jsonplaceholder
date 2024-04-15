import 'package:progress_bar/domain/entities/photo_entity.dart';

abstract interface class PhotoRepository{
  Future<List<PhotoEntity>> getPhotos();
}