import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/materias/pages/modal-buttom-sheet/widgets/type_ahead_field_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

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
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: Column(children: [
                  Row(
                    children: [
                      Observer(builder: (_) {
                        return TypeAheadFieldWidget(
                          titulo: 'Pesquisar conteúdo',
                          list: controller.getListaAulasNomes,
                          flex: 2,
                          onSuggestionSelected: controller.onAulaSelecionada,
                          value: controller.valorDigitado,
                          onChanged: controller.onChangedValorDigitado,
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
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: ListView.builder(
                      itemCount: controller.materia.listaAulas!.length,
                      itemBuilder: (context, index) {
                        return Observer(builder: (_) {
                          return Align(
                            alignment: Alignment.topLeft,
                            child: TextButton(
                                onPressed: () {
                                  controller.onAulaSelecionada(controller
                                      .materia.listaAulas![index].idPagina);
                                },
                                child: Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    controller.materia.listaAulas![index]
                                        .tituloPagina,
                                    style: AppTextStyles.body.copyWith(
                                        fontSize: 22, color: Color(0xff00518C)),
                                    textAlign: TextAlign.start,
                                  ),
                                )),
                          );
                        });
                      },
                    ),
                  ))
                ]),
              ));
        });
      });
}
