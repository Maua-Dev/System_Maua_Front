import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/materia_card/aula_card_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class AppBarHomeWidget extends StatelessWidget implements PreferredSizeWidget {
  final String usuario;
  final String ra;
  final String materia;
  final String duracao;
  final String local;

  const AppBarHomeWidget(
      {required this.usuario,
      required this.ra,
      required this.materia,
      required this.duracao,
      required this.local});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Stack(
        children: [
          Container(
            height: 190,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(gradient: AppGradients.blueGradient),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text.rich(TextSpan(
                          text: 'Olá, ',
                          style: AppTextStyles.appBarHomeBody,
                          children: [
                            TextSpan(
                                text: usuario,
                                style: AppTextStyles.appBarHomeTitle),
                          ])),
                      Text(
                        ra,
                        style: AppTextStyles.appBarHomeBody,
                      )
                    ],
                  ),
                  Container(
                    width: 90,
                    height: 90,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: AppColors.white),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://avatars.githubusercontent.com/u/24724451?v=4'),
                              ))),
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 3.1),
            child: AulaCardWidget(
              materia: materia,
              duracao: duracao,
              local: local,
            ),
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(250);
}
