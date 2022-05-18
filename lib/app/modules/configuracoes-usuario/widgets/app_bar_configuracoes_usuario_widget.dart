import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class AppBarConfiguracoesUsuario extends StatelessWidget {
  final String nomeAluno;
  final String raAluno;
  final String fotoAluno;
  const AppBarConfiguracoesUsuario(
      {Key? key,
      required this.nomeAluno,
      required this.raAluno,
      required this.fotoAluno})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.18,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: MediaQuery.of(context).size.height * 0.13,
            height: MediaQuery.of(context).size.height * 0.13,
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: AppColors.brandingBlue),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.all(3),
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
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                    text: 'Olá, ',
                    style: AppTextStyles.titleH1,
                    children: [
                      TextSpan(text: nomeAluno, style: AppTextStyles.titleH1),
                    ]),
              ),
              Text(raAluno, style: AppTextStyles.titleH2)
            ],
          )
        ],
      ),
    );
  }
}
