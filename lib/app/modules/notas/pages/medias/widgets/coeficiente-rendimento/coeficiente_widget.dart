// Card para coeficiente de rendimento

import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class CoeficienteWidget extends StatelessWidget {
  final String titulo;
  final String nota;

  const CoeficienteWidget({
    Key? key,
    required this.titulo,
    required this.nota,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            boxShadow: [AppColors.clickShadow],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.white,
              width: 1,
            )),
        width: MediaQuery.of(context).size.width * 0.75,
        height: MediaQuery.of(context).size.height * 0.042,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                '$titulo',
                style: TextStyle(fontSize: 18),
              ),
              VerticalDivider(
                width: 0.001,
                color: Colors.black,
                thickness: 0.8,
              ),
              Text(
                '$nota',
                style: AppTextStyles.bodyBoldH4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
