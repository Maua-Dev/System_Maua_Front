import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/enumerates/avaliacao_a_enum.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/models/notas_model.dart';

import 'notas_card_widget.dart';

class GridAvaliacao extends StatelessWidget {
  final Function(String, AvaliacaoEnum)? setNota;
  final List<NotasModel> listaNotas;

  const GridAvaliacao({Key? key, required this.listaNotas, this.setNota})
      : super(key: key);

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
          setNota: setNota,
          tituloAvaliacao: listaNotas[index].avaliacao,
          notaAvaliacao: listaNotas[index].value,
        ),
      ),
    );
  }
}
