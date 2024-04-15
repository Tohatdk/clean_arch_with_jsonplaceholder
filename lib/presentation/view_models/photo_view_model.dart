
import 'package:freezed_annotation/freezed_annotation.dart';
part 'photo_view_model.freezed.dart';

@freezed
class PhotoViewModel with _$PhotoViewModel {
 const factory PhotoViewModel({

    required int albumId,
    required int id,
    required String title,
    required String url,
    required String thumbnailUrl,
  })=_PhotoViewModel;
}