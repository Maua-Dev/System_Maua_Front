import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class IcCardCustomWidget extends StatelessWidget {
  final String titulo;
  final Function()? onPressed;
  const IcCardCustomWidget({Key? key, required this.titulo, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 8),
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [AppColors.shadow],
              border: Border.all(color: AppColors.shape, width: 2)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              titulo,
              style: AppTextStyles.body.copyWith(
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
