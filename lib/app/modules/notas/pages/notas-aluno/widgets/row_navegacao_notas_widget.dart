import 'package:flutter/material.dart';

import 'icones_navegacao_widget.dart';

class RowNavegacaoNotasWidget extends StatelessWidget {
  final String nomeMateria;
  const RowNavegacaoNotasWidget({Key? key, required this.nomeMateria})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconesNavegacaoWidget(
            titulo: 'Atividades',
            route: '',
            nomeMateria: nomeMateria,
            icone: Icons.book,
          ),
          IconesNavegacaoWidget(
            titulo: 'Atingir metas',
            route: '/medias/atingir-metas',
            nomeMateria: nomeMateria,
            icone: Icons.my_location_outlined,
          ),
          IconesNavegacaoWidget(
            titulo: 'Estatísticas',
            route: '/medias/estatisticas',
            nomeMateria: nomeMateria,
            icone: Icons.insert_chart,
          ),
        ],
      ),
    );
  }
}
