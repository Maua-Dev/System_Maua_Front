import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/notas/pages/atividades/atividades_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/atividades/widgets/atividade_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class AtividadesPage extends StatefulWidget {
  const AtividadesPage({Key? key}) : super(key: key);

  @override
  _AtividadesPageState createState() => _AtividadesPageState();
}

class _AtividadesPageState
    extends ModularState<AtividadesPage, AtividadesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Atividades',
          icon: Icons.book,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 36),
          child: Container(
            child: Column(
              children: [
                Expanded(
                  child: Observer(builder: (_) {
                    return ListView.separated(
                      itemCount: controller.atividades.length,
                      itemBuilder: (_, index) {
                        return Observer(builder: (_) {
                          return AtividadeCardWidget(
                            nomeAtividade:
                                controller.atividades[index].nomeAtividade,
                            entregue: controller.atividades[index].entregue,
                            nota: controller.atividades[index].nota
                                .toStringAsFixed(1)
                                .replaceAll('.', ','),
                          );
                        });
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 20,
                        );
                      },
                    );
                  }),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Observer(builder: (_) {
                      return Text(
                          'Média de atividades: ${controller.mediaDeAtividades}');
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
