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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.height * 0.115,
            height: MediaQuery.of(context).size.height * 0.115,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 2, color: AppColors.lightBlue),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: FractionallySizedBox(
                heightFactor: 0.93,
                widthFactor: 0.93,
                child: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: NetworkImage(fotoAluno),
                        ))),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width < 400 ? 32 : 48),
            child: Column(
              children: [
                Text(nomeAluno,
                    style: AppTextStyles.appBarHomeTitle
                        .copyWith(color: Colors.black)),
                Text(raAluno,
                    style: AppTextStyles.appBarHomeBody
                        .copyWith(color: Colors.black))
              ],
            ),
          )
        ],
      ),
    );
  }
}
