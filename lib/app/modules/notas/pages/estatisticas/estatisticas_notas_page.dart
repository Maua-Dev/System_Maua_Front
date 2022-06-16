import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/estatisticas_notas_controller.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/widgets/grafico_barras_widget.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/widgets/media_row_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import '../../../../injection_container.dart';
import 'models/dados_grafico_de_barras_model.dart';

class EstatisticasNotasPage extends StatefulWidget {
  const EstatisticasNotasPage({Key? key, nomeMateria}) : super(key: key);

  @override
  _EstatisticasNotasPageState createState() => _EstatisticasNotasPageState();
}

class _EstatisticasNotasPageState extends State<EstatisticasNotasPage> {
  @override
  Widget build(BuildContext context) {
    var controller = serviceLocator<EstatisticasController>();

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
                          'dado',
                          style: AppTextStyles.bodyBoldH4,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                Observer(builder: (_) {
                  return MediaRowWidget(
                    tipoDeMedia: 'Média parcial',
                    media: controller.mediaParcial,
                    azul: controller.medias.mediaParcial != null
                        ? controller.medias.mediaParcial! >=
                            controller.mediaMaua
                        : true,
                  );
                }),
                Observer(builder: (_) {
                  return MediaRowWidget(
                    tipoDeMedia: 'Média final',
                    media: controller.mediaFinal,
                    azul: controller.medias.mediaFinal != null
                        ? controller.medias.mediaFinal! >= controller.mediaMaua
                        : true,
                  );
                }),
                Observer(builder: (_) {
                  return MediaRowWidget(
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
                child: GraficoDeBarrasWidget(
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
