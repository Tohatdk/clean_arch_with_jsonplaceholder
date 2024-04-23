import 'package:progress_bar/src/domain/entities/album_entity.dart';

abstract interface class AlbumRepository{
  Future<List<AlbumEntity>> getAlbums();
}