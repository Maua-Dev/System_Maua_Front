import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/notas/pages/notas-aluno/models/notas_model.dart';
import 'package:system_maua_front/app/shared/components/notas_card/notas_card_widget.dart';

class GridAvaliacao extends StatelessWidget {
  final List<NotasModel> listaNotas;

  const GridAvaliacao({Key? key, required this.listaNotas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 8,
          childAspectRatio: 2,
        ),
        itemCount: listaNotas.length,
        itemBuilder: (context, index) => NotasCardWidget(
          tituloAvaliacao: listaNotas[index].avaliacao,
          notaAvaliacao: listaNotas[index].value,
        ),
      ),
    );
  }
}
