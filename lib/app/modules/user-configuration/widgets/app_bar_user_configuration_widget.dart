import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class AppBarUserConfiguration extends StatelessWidget {
  final String username;
  final String userRa;
  final String userPhoto;
  const AppBarUserConfiguration(
      {Key? key,
      required this.username,
      required this.userRa,
      required this.userPhoto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 28),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.height * 0.13,
                    height: MediaQuery.of(context).size.height * 0.13,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: AppColors.brandingBlue),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: GestureDetector(
                        onTap: () {
                          Get.back();
                        },
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
                                .copyWith(color: AppColors.brandingBlue),
                            children: [
                              TextSpan(
                                  text: username,
                                  style: AppTextStyles.titleH1
                                      .copyWith(color: AppColors.brandingBlue)),
                            ]),
                      ),
                      Text(userRa,
                          style: AppTextStyles.titleH2
                              .copyWith(color: AppColors.brandingBlue))
                    ],
                  )
                ],
              ),
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
                color: AppColors.brandingBlue,
              ),
            )),
      ],
    );
  }
}
