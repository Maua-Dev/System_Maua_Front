import 'package:flutter/material.dart';

import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class CardGrades extends StatelessWidget {
  final String subjectName;
  final String parcialGrade;
  final Function()? onTap;

  const CardGrades({
    Key? key,
    required this.subjectName,
    required this.parcialGrade,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onTap,
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  boxShadow: [AppColors.shadow],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 94,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Text(
                    'Nota parcial: $parcialGrade',
                    style: TextStyle(
                      color: Color.fromRGBO(21, 26, 39, 1),
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: [AppColors.shadow],
                  color: Color.fromRGBO(2, 90, 203, 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 44,
                child: Center(
                  child: Text('$subjectName',
                      style: AppTextStyles.bodyBold.copyWith(
                        fontSize: 16,
                        color: Colors.white,
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
