import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/estatisticas_notas_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/widgets/grafico_barras.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/widgets/medias_row.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import 'models/dados_grafico_de_barras.dart';

class EstatisticasPage extends StatefulWidget {
  const EstatisticasPage({Key? key, nomeMateria}) : super(key: key);

  @override
  _EstatisticasPageState createState() => _EstatisticasPageState();
}

class _EstatisticasPageState
    extends ModularState<EstatisticasPage, EstatisticasController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(title: 'Estatísticas', icon: Icons.fact_check),
        body: Container(
            child: Column(
          children: [
            Container(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Modular.args!.data as String,
                          style: AppTextStyles.bodyBold.copyWith(fontSize: 25),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Observer(builder: (_) {
                  return MediaRow(
                    tipoDeMedia: 'Média parcial',
                    media: controller.mediaParcial,
                    azul: controller.medias.mediaParcial != null
                        ? controller.medias.mediaParcial! >=
                            controller.mediaMaua
                        : true,
                  );
                }),
                Observer(builder: (_) {
                  return MediaRow(
                    tipoDeMedia: 'Média final',
                    media: controller.mediaFinal,
                    azul: controller.medias.mediaFinal != null
                        ? controller.medias.mediaFinal! >= controller.mediaMaua
                        : true,
                  );
                }),
                Observer(builder: (_) {
                  return MediaRow(
                    tipoDeMedia: 'Média do Tronco',
                    media: controller.mediaTronco,
                    azul: controller.medias.mediaTronco != null
                        ? controller.medias.mediaTronco! >= controller.mediaMaua
                        : true,
                  );
                }),
              ],
            )),
            Observer(builder: (_) {
              return Expanded(
                child: GraficoDeBarras(
                  seriesList: [
                    charts.Series<DadoGraficoDeBarrasModel, String>(
                      id: 'Alunos',
                      colorFn: (DadoGraficoDeBarrasModel notas, __) {
                        if (notas.nota == controller.mediaFinalArredondada) {
                          return charts.MaterialPalette.green.shadeDefault;
                        }
                        return charts.MaterialPalette.blue.shadeDefault;
                      },
                      domainFn: (DadoGraficoDeBarrasModel nota, _) => nota.nota,
                      measureFn: (DadoGraficoDeBarrasModel nota, _) =>
                          nota.quantidadeAlunos,
                      data: controller.dadosGraficoDeBarras.dados,
                    ),
                  ],
                ),
              );
            }),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04)
          ],
        )),
      ),
    );
  }
}
