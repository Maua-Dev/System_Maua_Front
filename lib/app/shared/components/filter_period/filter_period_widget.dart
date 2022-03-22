import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:system_maua_front/app/shared/components/filter_period/filter_period_controller.dart';
import 'package:system_maua_front/app/shared/enumerates/period_enum.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

// ignore: must_be_immutable
class FilterPeriodWidget extends StatelessWidget {
  var controller = FilterPeriodController();
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
            color: AppColors.generalLetter,
          ),
          underline: Container(
            height: 0,
          ),
          onChanged: (String? newValue) {
            controller.changeFilter(newValue);
          },
          items: PeriodEnum.values.map((PeriodEnum value) {
            return DropdownMenuItem<String>(
              value: value.period,
              child: Row(
                children: [
                  Text(value.period),
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
