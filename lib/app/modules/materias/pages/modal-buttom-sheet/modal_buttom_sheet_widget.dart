import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias/pages/modal-buttom-sheet/widgets/text_button_custom_widget.dart';
import 'package:system_maua_front/app/modules/materias/pages/modal-buttom-sheet/widgets/type_ahead_field_widget.dart';

import 'modal_buttom_sheet_controller.dart';

Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
  var controller = Modular.get<ModalButtomController>();
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.73,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                child: Column(children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: Row(
                      children: [
                        Observer(builder: (_) {
                          return Expanded(
                            child: TypeAheadFieldWidget(
                              titulo: 'Pesquisar conteúdo',
                              list: controller.getListaAulasNomes,
                              onSuggestionSelected: (value) {
                                controller.onAulaSelecionada(value);
                              },
                              value: controller.valorDigitado,
                              onChanged: controller.onChangedValorDigitado,
                            ),
                          );
                        }),
                        IconButton(
                          icon: Icon(
                            Icons.close,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: TextButtonCustomWidget(
                      titulo: 'Introdução',
                      onPressed: () {
                        Modular.to.pushNamed('apresentacao',
                            arguments: controller.materia);
                      },
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                    itemCount: controller.materia.listaAulas!.length,
                    itemBuilder: (context, index) {
                      return Observer(builder: (_) {
                        return TextButtonCustomWidget(
                          titulo: controller
                              .materia.listaAulas![index].tituloPagina,
                          onPressed: () {
                            controller.onAulaSelecionada(
                                controller.materia.listaAulas![index].idPagina);
                          },
                        );
                      });
                    },
                  ))
                ]),
              ));
        });
      });
}
