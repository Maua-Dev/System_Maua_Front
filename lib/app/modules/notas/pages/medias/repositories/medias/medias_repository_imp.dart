import 'package:dio/dio.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/models/medias/medias_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/repositories/medias/medias_repository_interface.dart';

class MediasRepositoryImp implements IMediasRepository {
  final Dio dioClient;

  MediasRepositoryImp(this.dioClient);

  @override
  Future<MediasModel> getMedias() async {
    final res = await dioClient
        .get<Map<String, dynamic>>('/appmaua_subjects/Subjects/1');
    return MediasModel.fromJson(res.data!);
  }
}
