import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class HelpCard extends StatelessWidget {
  final void Function()? onPressed;
  final String title;

  const HelpCard({Key? key, this.onPressed, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.06,
        margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: AppColors.white,
          ),
          child: Text(
            '$title',
            style: AppTextStyles.body,
          ),
        ),
      ),
    );
  }
}
