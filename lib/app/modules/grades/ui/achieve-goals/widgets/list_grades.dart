import 'package:flutter/material.dart';

import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class ListGradesCard extends StatelessWidget {
  final String nameActivity;
  final double? finalGrade;
  final double heft;
  final Function()? onTap;

  const ListGradesCard({
    Key? key,
    required this.nameActivity,
    this.finalGrade,
    this.onTap,
    required this.heft,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: <Widget>[
          // Container debaixo contendo peso e nota
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: 120,
            decoration: BoxDecoration(
              boxShadow: [AppColors.clickShadow],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Column(
                    children: [
                      Text(
                        'Peso:',
                        style: AppTextStyles.bodyH4.copyWith(
                          fontSize: 12,
                          color: Color.fromRGBO(2, 40, 147, 1),
                        ),
                      ),
                      Text('x $heft',
                          style: AppTextStyles.bodyH4.copyWith(
                            fontSize: 12,
                            color: Color.fromRGBO(2, 40, 147, 1),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0),
                  child: Column(
                    children: [
                      Text('Nota Final:',
                          style: AppTextStyles.bodyH4.copyWith(
                            fontSize: 16,
                            color: Color.fromRGBO(2, 40, 147, 1),
                          )),
                      Text('$finalGrade',
                          style: AppTextStyles.bodyH4.copyWith(
                            fontSize: 36,
                            color: Color.fromRGBO(2, 40, 147, 1),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
          //Container de cima que vai ser o nome da atividade
          Container(
            decoration: BoxDecoration(
              boxShadow: [AppColors.clickShadow],
              color: Color.fromRGBO(2, 90, 203, 1),
              borderRadius: BorderRadius.circular(10),
            ),
            width: MediaQuery.of(context).size.width * 0.4,
            height: 35,
            child: Center(
              child: Text(
                '$nameActivity',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
