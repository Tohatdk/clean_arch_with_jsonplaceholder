import 'package:progress_bar/src/domain/entities/photo_entity.dart';
import 'package:progress_bar/src/domain/repository/photo_repository.dart';

class GetPhotosUseCase{
  final PhotoRepository _photoRepository;
 const GetPhotosUseCase(this._photoRepository);
Future<List<PhotoEntity>> call()async{
  final photoList=await _photoRepository.getPhotos();
  return photoList;
}

}