import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class AppBarHomeWidget extends StatelessWidget {
  final String user;
  final String ra;
  final void Function()? onTap;

  const AppBarHomeWidget({
    required this.user,
    required this.ra,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 4,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(gradient: AppGradients.blueGradient),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height / 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.height * 0.13,
                  height: MediaQuery.of(context).size.height * 0.13,
                  decoration: BoxDecoration(
                    border: Border.all(width: 2, color: AppColors.white),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(3),
                    child: GestureDetector(
                      onTap: onTap,
                      child: Container(
                          width: MediaQuery.of(context).size.height * 0.115,
                          height: MediaQuery.of(context).size.height * 0.115,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://avatars.githubusercontent.com/u/24724451?v=4'),
                              ))),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text.rich(
                      TextSpan(
                          text: 'Olá, ',
                          style: AppTextStyles.titleH1
                              .copyWith(color: AppColors.white),
                          children: [
                            TextSpan(
                                text: user,
                                style: AppTextStyles.titleH1
                                    .copyWith(color: AppColors.white)),
                          ]),
                      key: ValueKey('titleUser'),
                    ),
                    Text(
                      ra,
                      style: AppTextStyles.titleH2
                          .copyWith(color: AppColors.white),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
            right: 12,
            top: 12,
            child: PopupMenuButton(
              itemBuilder: (context) {
                return [PopupMenuItem(child: Text('Sem notificações'))];
              },
              child: Icon(
                Icons.notifications,
                color: AppColors.white,
              ),
            )),
      ],
    );
  }
}
