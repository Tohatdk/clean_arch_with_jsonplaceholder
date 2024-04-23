import 'package:progress_bar/src/data/data_sources/data_source.dart';
import 'package:progress_bar/src/data/dto_entity_mapper.dart';
import 'package:progress_bar/src/domain/entities/album_entity.dart';
import 'package:progress_bar/src/domain/repository/album_repository.dart';

class AlbumRepositoryImpl implements AlbumRepository{
  final DataSource _albumDataSource;
  AlbumRepositoryImpl(this._albumDataSource);

  @override
  Future<List<AlbumEntity>> getAlbums() async{
    final dtoAlbumList= await _albumDataSource.getAlbums();
    final albumList=dtoAlbumList.map((e)=>e.toEntity()).toList(growable: false);
    return albumList;
  }
}