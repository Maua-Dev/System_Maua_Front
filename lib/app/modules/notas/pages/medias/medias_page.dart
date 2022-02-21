import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/coeficiente-rendimento/coeficiente_widget.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/filtro_ano/filtro_widget.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/opcao_chip/opcao_chip.dart';
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
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Engenharia de Computação',
                              style:
                                  AppTextStyles.bodyBold.copyWith(fontSize: 25),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 10),
                      child: CoeficienteWidget(
                          titulo: 'Coeficiente de Rendimento', nota: '8,7'),
                    ),
                    Observer(builder: (_) {
                      return FiltroWidget(
                        listOptions: controller.filtros.anos,
                      );
                    }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: ChipWidget(
                              label: '1º Semestre',
                              selected: controller.filtros.primeiroSem,
                            ),
                          ),
                          ChipWidget(
                            label: '2º Semestre',
                            selected: controller.filtros.segundoSem,
                          )
                        ]),
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: ChipWidget(
                              label: 'Provas',
                              selected: controller.filtros.provas,
                            ),
                          ),
                          ChipWidget(
                            label: 'Trabalhos',
                            selected: controller.filtros.trabalhos,
                          )
                        ]),
                      ],
                    )
                  ],
                );
              }),
            ),
            Expanded(
              child: Observer(
                builder: (_) {
                  return ListView.separated(
                    itemCount: controller.medias.medias.length,
                    itemBuilder: (_, index) {
                      return ListaNotasCard(
                        onTap: () => {
                          Modular.to.pushNamed(
                            '/medias/notas',
                            arguments: controller.medias.medias[index].materia,
                          )
                        },
                        texto: controller.medias.medias[index].materia,
                        nota: controller.medias.medias[index].media,
                        mediaMaua: controller.mediaMaua,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 1.5,
                        color: Colors.black,
                      );
                    },
                  );
                },
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
          ],
        )),
      ),
    );
  }
}
