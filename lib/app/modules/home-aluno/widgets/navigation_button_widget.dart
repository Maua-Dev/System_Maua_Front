import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class NavigationButtonWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;
  const NavigationButtonWidget(
      {Key? key, required this.title, this.onTap, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.12,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: AppColors.shape),
              boxShadow: [AppColors.shadow]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: MediaQuery.of(context).size.width < 350 ? 36 : 48,
                  color: AppColors.lightLetter,
                ),
                SizedBox(
                  width: 24,
                ),
                Text(
                  title,
                  style: AppTextStyles.cardH3.copyWith(
                      fontSize:
                          MediaQuery.of(context).size.width < 350 ? 16 : 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
