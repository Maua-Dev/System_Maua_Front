import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/models/video_tutorial_model.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/page/video-especifico/widget/video_especifico_card.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class VideoEspecificoPage extends StatefulWidget {
  VideoEspecificoPage({
    Key? key,
    required this.video,
  }) : super(key: key);
  final VideoTutorialModel video;

  @override
  _VideoEspecificoPageState createState() => _VideoEspecificoPageState();
}

class _VideoEspecificoPageState extends State<VideoEspecificoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Vídeo Tutorial',
        icon: Icons.play_circle_fill_rounded,
      ),
      body: SingleChildScrollView(
        child: VideoEspecificoCard(
          titulo: widget.video.titulo,
          descricao: widget.video.descricao,
          video: widget.video.url,
        ),
      ),
    );
  }
}
