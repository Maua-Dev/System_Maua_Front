import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class IconesNavegacaoWidget extends StatelessWidget {
  final String titulo;
  final String route;
  final String? nomeMateria;
  final IconData icone;
  const IconesNavegacaoWidget(
      {Key? key,
      required this.titulo,
      required this.route,
      this.nomeMateria,
      required this.icone})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.shape, width: 1),
          boxShadow: [AppColors.clickShadow]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            IconButton(
                onPressed: () {
                  Get.toNamed(
                    route,
                    arguments: nomeMateria,
                  );
                },
                icon: Icon(
                  icone,
                  color: AppColors.brandingBlue,
                  size: 34,
                )),
            Text(
              titulo,
              style: AppTextStyles.cardH3,
            )
          ],
        ),
      ),
    );
  }
}
