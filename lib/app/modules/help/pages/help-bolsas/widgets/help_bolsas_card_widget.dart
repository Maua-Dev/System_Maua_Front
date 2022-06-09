import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class HelpBolsasCardWidget extends StatelessWidget {
  final String? titulo;
  final String? info;

  const HelpBolsasCardWidget({
    required this.titulo,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [AppColors.clickShadow],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: 340,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8, top: 8),
              child: Text(
                '$titulo',
                style: AppTextStyles.titleH2,
              ),
            ),
            Text(
              '''$info''',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
