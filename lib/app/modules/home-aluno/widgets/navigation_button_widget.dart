import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class NavigationButtonWidget extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const NavigationButtonWidget({Key? key, required this.title, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: InkWell(
        onTap: onTap,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.12,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: AppColors.borderGrey),
              boxShadow: [AppColors.shadow]),
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.playlist_add_check,
                size: 40,
                color: AppColors.thinLetter,
              ),
              SizedBox(
                width: 10,
              ),
              Text(title),
            ],
          )),
        ),
      ),
    );
  }
}
