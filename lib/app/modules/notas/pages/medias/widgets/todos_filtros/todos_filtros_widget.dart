import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/filtro_ano/filtro_widget.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/opcao_chip/opcao_chip.dart';

class TodosFiltrosWidget extends StatelessWidget {
  final List<String> anos;
  final bool primeiroSem;
  final bool segundoSem;
  final bool provas;
  final bool trabalhos;

  const TodosFiltrosWidget({
    Key? key,
    required this.anos,
    required this.primeiroSem,
    required this.segundoSem,
    required this.provas,
    required this.trabalhos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(builder: (_) {
          return FiltroWidget(
            listOptions: anos,
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
                  selected: primeiroSem,
                ),
              ),
              ChipWidget(
                label: '2º Semestre',
                selected: segundoSem,
              )
            ]),
            Column(children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: ChipWidget(
                  label: 'Provas',
                  selected: provas,
                ),
              ),
              ChipWidget(
                label: 'Trabalhos',
                selected: trabalhos,
              )
            ]),
          ],
        )
      ],
    );
  }
}
