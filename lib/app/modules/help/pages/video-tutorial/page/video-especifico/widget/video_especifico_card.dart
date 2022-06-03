import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/page/video-especifico/widget/video_player_card.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class VideoEspecificoCard extends StatelessWidget {
  final String titulo;
  final String? descricao;
  final String video;

  const VideoEspecificoCard({
    Key? key,
    required this.titulo,
    this.descricao,
    required this.video,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [AppColors.shadow],
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.blueGrey,
                  width: 1,
                )),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Center(
              child: Text(
                '$titulo',
                style: AppTextStyles.bodyBoldH4,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '$descricao',
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
          child: VideoplayerCard(
            myVideoId: video,
          ),
        )
      ],
    );
  }
}
