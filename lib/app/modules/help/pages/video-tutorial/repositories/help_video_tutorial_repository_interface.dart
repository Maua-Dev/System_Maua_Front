import 'package:system_maua_front/app/modules/help/pages/video-tutorial/models/video_tutorial_model.dart';

abstract class IHelpVideoTutorialRepository {
  Future<List<VideoTutorialModel>> getVideos();
}