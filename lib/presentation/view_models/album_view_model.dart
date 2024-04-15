
import 'package:freezed_annotation/freezed_annotation.dart';
part 'album_view_model.freezed.dart';

@freezed
class AlbumViewModel with _$AlbumViewModel {
 const factory AlbumViewModel({
  required int userId,
  required int id,
  required String title,
 })=_AlbumViewModel;
}