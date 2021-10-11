import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class IcDescricaoCardWidget extends StatelessWidget {
  final String titulo;
  const IcDescricaoCardWidget({Key? key, required this.titulo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 16),
          child: Divider(
            color: Colors.grey.shade400,
            height: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8, left: 4),
          child: Text(
            titulo,
            style: AppTextStyles.bodyBold.copyWith(fontSize: 16),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
