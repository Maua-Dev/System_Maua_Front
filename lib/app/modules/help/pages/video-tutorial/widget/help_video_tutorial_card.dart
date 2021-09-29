import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class VideoTutorialCard extends StatelessWidget {
  final String titulo;
  final String? descricao;
  final void Function()? onTap;

  const VideoTutorialCard(
      {Key? key,
      required this.titulo,
      this.descricao,
      this.onTap,
      }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [AppColors.shadow],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width,
        height:  100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '$titulo',
              style: AppTextStyles.bodyBold.copyWith(
                  fontSize: 22,
              ),
            ),
            Text('$descricao!',
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