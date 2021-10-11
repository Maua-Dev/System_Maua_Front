import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class VideoTutorialCard extends StatelessWidget {
  final String titulo;
  final String? descricao;
  final void Function()? onTap;

  const VideoTutorialCard({
    Key? key,
    required this.titulo,
    this.descricao,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [AppColors.shadow],
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.blueGrey,
                width: 1,
              )),
          width: MediaQuery.of(context).size.width,
          height: 100,
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '$titulo',
                      style: AppTextStyles.bodyBold.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4),
                      child: Text(
                        '$descricao!',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
