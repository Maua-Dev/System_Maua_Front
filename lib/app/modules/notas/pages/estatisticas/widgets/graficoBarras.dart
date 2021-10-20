import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/notas/pages/estatisticas/models/grafico_de_barras_model.dart';

class GraficoDeBarras extends StatelessWidget {
  final List<charts.Series<DadoGraficoDeBarrasModel, String>> seriesList;

  const GraficoDeBarras({
    Key? key,
    required this.seriesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05),
      child: charts.OrdinalComboChart(seriesList,
          animate: true,
          behaviors: [
            charts.SeriesLegend(),
            charts.ChartTitle(
              'Média',
              behaviorPosition: charts.BehaviorPosition.bottom,
              titleOutsideJustification: charts.OutsideJustification.middle,
            ),
          ],
          defaultRenderer: charts.BarRendererConfig(
              groupingType: charts.BarGroupingType.grouped),
          customSeriesRenderers: [
            charts.LineRendererConfig(customRendererId: 'customLine'),
          ]),
    );
  }
}
