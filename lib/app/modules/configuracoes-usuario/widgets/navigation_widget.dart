import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class NavigationWidget extends StatelessWidget {
  final String titulo;
  final IconData icone;
  final String? route;
  const NavigationWidget(
      {Key? key, required this.titulo, required this.icone, this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      icone,
                      color: AppColors.brandingBlue,
                      size: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        titulo,
                        style: AppTextStyles.cardH3,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.keyboard_arrow_right,
                  color: AppColors.brandingBlue,
                  size: 32,
                )
              ],
            ),
          ),
        ),
        Divider(
          thickness: 3,
        ),
      ],
    );
  }
}
