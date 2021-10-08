import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class TextoCustomWidget extends StatelessWidget {
  final String? texto;
  final Color? corTexto;
  final double? fontsize;
  const TextoCustomWidget({Key? key, this.texto, this.corTexto, this.fontsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return texto == null
        ? SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                texto!,
                textAlign: TextAlign.left,
                style: AppTextStyles.body.copyWith(
                    color: corTexto ?? Colors.black, fontSize: fontsize),
              ),
            ),
          );
  }
}
