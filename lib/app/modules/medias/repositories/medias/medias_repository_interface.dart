import 'package:system_maua_front/app/modules/medias/models/medias/medias_model.dart';

abstract class IMediasRepository {
  Future<MediasModel> getMedias();
}
