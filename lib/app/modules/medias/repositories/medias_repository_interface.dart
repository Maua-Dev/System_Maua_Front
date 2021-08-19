import 'package:system_maua_front/app/modules/medias/models/medias_model.dart';

abstract class IMediasRepository {
  Future<List<MediasModel>> getMedias();
}
