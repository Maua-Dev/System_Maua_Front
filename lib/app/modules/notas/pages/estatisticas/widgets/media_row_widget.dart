import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class MediaRowWidget extends StatelessWidget {
  final String tipoDeMedia;
  final String media;
  final bool azul;
  const MediaRowWidget({
    Key? key,
    required this.tipoDeMedia,
    required this.media,
    required this.azul,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.13),
          child: Row(
            children: [
              Expanded(flex: 3, child: Text('$tipoDeMedia: ')),
              Expanded(
                  flex: 1,
                  child: Text(
                    media,
                    style: AppTextStyles.body.copyWith(
                        color: azul ? AppColors.lightBlue : AppColors.red),
                  ))
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
