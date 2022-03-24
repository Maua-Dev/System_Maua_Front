import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/coeficiente-rendimento/coeficiente_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/lista_notas/lista_notas_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';
import 'medias_controller.dart';

class MediasPage extends StatefulWidget {
  const MediasPage({Key? key}) : super(key: key);

  @override
  _MediasPageState createState() => _MediasPageState();
}

class _MediasPageState extends ModularState<MediasPage, MediasController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(title: 'Médias', icon: Icons.fact_check),
        body: Container(
            child: Column(
          children: [
            Container(
              child: Observer(builder: (_) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 8, 8, 4),
                            child: Text(
                              controller.medias.nomeGraduacao,
                              style:
                                  AppTextStyles.bodyBold.copyWith(fontSize: 22),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: CoeficienteWidget(
                          titulo: 'Coeficiente de Rendimento', nota: '8,7'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Matérias',
                        style: AppTextStyles.bodyBold.copyWith(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                );
              }),
            ),
            Expanded(
              child: Observer(
                builder: (_) {
                  return ListView.builder(
                    itemCount: controller.medias.medias.length,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListaNotasCard(
                          onTap: () => {
                            Modular.to.pushNamed(
                              '/medias/notas',
                              arguments:
                                  controller.medias.medias[index].materia,
                            )
                          },
                          texto: controller.medias.medias[index].materia,
                          nota:
                              controller.medias.medias[index].getMediaComputada,
                          mediaMaua: controller.mediaMaua,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        )),
      ),
    );
  }
}
