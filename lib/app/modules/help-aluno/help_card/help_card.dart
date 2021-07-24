import 'package:flutter/cupertino.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class HelpCard extends StatelessWidget {
  final String navigate;
  final String title;

  const HelpCard({Key? key, required this.navigate, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 50,
      margin: const EdgeInsets.only(left: 50, right: 50, top: 20),
      child: ElevatedButton(
        onPressed: () {
          Modular.to.navigate('$navigate');
        },
        style: ElevatedButton.styleFrom(
          primary: AppColors.white,
        ),
        child: Text(
          "$title",
          style: AppTextStyles.body,
        ),
      ),
    );
  }
}
