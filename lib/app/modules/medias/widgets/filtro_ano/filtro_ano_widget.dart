import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'filtro_ano_controller.dart';

// ignore: must_be_immutable
class FiltroAnoWidget extends StatelessWidget {
  var controller = FiltroAnoController();
  @override
  Widget build(BuildContext context) {
    return Container(child: Observer(
      builder: (_) {
        return DropdownButton(
          value: controller.filterValue,
          icon: Icon(Icons.filter_list),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(
            fontSize: 24,
            color: AppColors.strongLetter,
          ),
          underline: Container(
            height: 0,
          ),
          onChanged: (String? newValue) {
            controller.changeFilter(newValue);
          },
          items: ['2020', '2021'].map((value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Row(
                children: [
                  Text(value),
                  SizedBox(
                    width: MediaQuery.of(context).size.height * 0.23,
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
