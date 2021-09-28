import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/help_video_tutorial_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/video-tutorial/widget/help_video_tutorial_card.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class HelpVideoTutorialPage extends StatefulWidget {
  HelpVideoTutorialPage({Key? key}) : super(key: key);

  @override
  _HelpVideoTutorialPageState createState() => _HelpVideoTutorialPageState();
}

class _HelpVideoTutorialPageState
    extends ModularState<HelpVideoTutorialPage, HelpVideoTutorialController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Vídeo Tutorial',
        icon: Icons.play_circle_fill_rounded,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Observer(builder: (_) {
                return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.listaVideos.length,
                    itemBuilder: (context, index) {
                      var abreviacao = controller.listaVideos[index];
                      return VideoTutorialCard(
                        titulo: abreviacao.titulo,
                        descricao: abreviacao.descricao,
                      );
                    });
              })
            ],
          ),
        ),
      ),
    );
  }
}
