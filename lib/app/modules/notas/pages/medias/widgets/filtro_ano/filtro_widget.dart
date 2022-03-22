import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:system_maua_front/app/shared/themes/app_colors.dart';

import 'filtro_controller.dart';

// ignore: must_be_immutable
class FiltroWidget extends StatelessWidget {
  late final List<String> listOptions;

  var controller = FiltroController();

  FiltroWidget({
    Key? key,
    required this.listOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(child: Observer(
      builder: (_) {
        return DropdownButton(
          value: controller.ano,
          icon: Icon(Icons.filter_list),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(
            fontSize: 24,
            color: AppColors.generalLetter,
          ),
          underline: Container(
            height: 0,
          ),
          onChanged: (String? newValue) {
            controller.changeFilter(newValue);
          },
          items: listOptions.map((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                children: [
                  Text(value),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.65,
                  ),
                ],
              ),
            );
          }).toList(),
        );
      },
    ));
  }
}
