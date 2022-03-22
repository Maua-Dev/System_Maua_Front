import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class IntercambioCard extends StatelessWidget {
  final void Function()? onPressed;
  final String title;

  const IntercambioCard({Key? key, this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.08,
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              primary: AppColors.textButtonCollor,
            ),
            child: Text(
              '$title',
              style: AppTextStyles.body,
            ),
          ),
        ),
      ),
    );
  }
}
