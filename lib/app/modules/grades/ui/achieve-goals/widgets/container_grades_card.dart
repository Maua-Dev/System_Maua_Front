import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class ContainerGradesCard extends StatelessWidget {
  final String subjectName;
  final String? finalgrade;
  final String? parcialgrade;

  const ContainerGradesCard(
      {Key? key, required this.subjectName, this.finalgrade, this.parcialgrade})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [AppColors.shadow],
            color: Color.fromRGBO(2, 90, 203, 1),
            borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: 48,
          child: Center(
            child: Text('$subjectName',
                style: AppTextStyles.bodyBold.copyWith(
                  fontSize: 21,
                  color: Colors.white,
                )),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            boxShadow: [AppColors.shadow],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          width: MediaQuery.of(context).size.width * 0.9,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Nota Final: $finalgrade',
                style: TextStyle(
                  color: Color.fromRGBO(2, 40, 147, 1),
                  fontSize: 16,
                ),
              ),
              Text(
                'Nota Parcial: $parcialgrade',
                style: TextStyle(
                  color: Color.fromRGBO(2, 40, 147, 1),
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
