import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class TextButtonCustomWidget extends StatelessWidget {
  final String titulo;
  final void Function()? onPressed;
  const TextButtonCustomWidget({Key? key, required this.titulo, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topLeft,
        child: TextButton(
            onPressed: onPressed,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                titulo,
                style: AppTextStyles.body
                    .copyWith(fontSize: 22, color: Color(0xff00518C)),
                textAlign: TextAlign.start,
              ),
            )));
  }
}
