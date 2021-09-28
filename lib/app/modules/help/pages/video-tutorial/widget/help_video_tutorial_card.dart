import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

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
    return Card(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [AppColors.shadow],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: MediaQuery.of(context).size.width * 0.95,
        height: MediaQuery.of(context).size.height * 0.065,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onTap,
            ),
            Text(titulo),
            Text(descricao!),
          ],
        ),
      ),
    );
  }
}