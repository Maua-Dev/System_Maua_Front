import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/aula_card/aula_card_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class AppBarHomeWidget extends StatelessWidget {
  final String usuario;
  final String ra;
  final String materia;
  final String duracao;
  final String local;
  final void Function()? onTap;

  const AppBarHomeWidget(
      {required this.usuario,
      required this.ra,
      required this.materia,
      required this.duracao,
      required this.onTap,
      required this.local});
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.24,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(gradient: AppGradients.blueGradient),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height * 0.042),
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
                          style: AppTextStyles.appBarHomeBody,
                          children: [
                            TextSpan(
                                text: usuario,
                                style: AppTextStyles.appBarHomeTitle),
                          ]),
                      key: ValueKey('titleUser'),
                    ),
                    Text(
                      ra,
                      style: AppTextStyles.appBarHomeBody,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.18,
          right: 0,
          left: 0,
          child: AulaCardWidget(
            materia: materia,
            duracao: duracao,
            local: local,
          ),
        )
      ],
    );
  }
}
