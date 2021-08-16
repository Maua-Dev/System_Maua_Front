import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class TituloApresentacaoWidget extends StatelessWidget {
  final String titulo;
  const TituloApresentacaoWidget({Key? key, required this.titulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        titulo,
        style: AppTextStyles.bodyBold.copyWith(fontSize: 24),
      ),
    );
  }
}
