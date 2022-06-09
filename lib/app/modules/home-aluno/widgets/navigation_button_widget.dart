import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import '../../../shared/components/dialogs/custom_alert_dialog_widget.dart';

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
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: InkWell(
        onTap: onTap ??
            () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomAlertDialogWidget(
                    title: 'Conteúdo indisponível!',
                    content: 'Aguarde novas atualizações.',
                  );
                },
              );
            },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(width: 1, color: AppColors.shape),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: AppColors.white,
          ),
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
