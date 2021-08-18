import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/modal-buttom-sheet/modal_buttom_sheet_controller.dart';
import 'package:system_maua_front/app/modules/modal-buttom-sheet/widgets/type_ahead_field_widget.dart';

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
              child: Column(children: [
                Row(
                  children: [
                    TypeAheadFieldWidget(
                        list: controller.getListaAulasNomes, flex: 2),
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
                )
              ]));
        });
      });
}
