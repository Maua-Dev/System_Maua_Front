import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class NavigatorIconWidget extends StatelessWidget {
  final String title;
  final Function()? onPressed;
  final String? subjectName;
  final IconData icon;
  final int myIndex;
  final int actualIndex;
  const NavigatorIconWidget(
      {Key? key,
      required this.title,
      required this.onPressed,
      this.subjectName,
      required this.icon,
      required this.myIndex,
      required this.actualIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(
                      color: actualIndex == myIndex
                          ? AppColors.brandingBlue
                          : AppColors.lightLetter,
                      width: 3,
                    )),
                child: IconButton(
                    onPressed: onPressed,
                    icon: Icon(
                      icon,
                      color: actualIndex == myIndex
                          ? AppColors.brandingBlue
                          : AppColors.lightLetter,
                      size: 34,
                    )),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 15),
                child: Divider(
                  thickness: 3,
                  color: AppColors.brandingBlue,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            title,
            style: AppTextStyles.bodyH4.copyWith(fontSize: 15),
          )
        ],
      ),
    );
  }
}
