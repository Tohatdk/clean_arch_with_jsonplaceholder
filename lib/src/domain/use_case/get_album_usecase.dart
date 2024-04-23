import 'package:progress_bar/src/domain/entities/album_entity.dart';
import 'package:progress_bar/src/domain/repository/album_repository.dart';

class GetAlbumsUseCase {
  final AlbumRepository _albumRepository;

  const GetAlbumsUseCase(this._albumRepository);

  Future<List<AlbumEntity>> call() async {
    final albumList = await _albumRepository.getAlbums();
    return albumList;
  }
}