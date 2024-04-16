
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:progress_bar/presentation/view_models/photo_view_model.dart';
part 'album_view_model.freezed.dart';

@freezed
class AlbumViewModel with _$AlbumViewModel {
 const factory AlbumViewModel({
  required int userId,
  required int id,
  required String title,
  @Default([]) List<PhotoViewModel> photos,
 })=_AlbumViewModel;

}