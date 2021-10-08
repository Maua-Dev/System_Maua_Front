import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class IconesNavegacao extends StatelessWidget {
  const IconesNavegacao({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.book,
                    color: AppColors.darkBlue,
                  )),
              Text(
                'Atividades',
                style: AppTextStyles.body.copyWith(fontSize: 15),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    Modular.to.pushNamed('/medias/atingir-metas');
                  },
                  icon: Icon(
                    Icons.my_location_outlined,
                    color: AppColors.darkBlue,
                  )),
              Text(
                'Atingir metas',
                style: AppTextStyles.body.copyWith(fontSize: 15),
              )
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.insert_chart,
                    color: AppColors.darkBlue,
                  )),
              Text(
                'Estatísticas',
                style: AppTextStyles.body.copyWith(fontSize: 15),
              )
            ],
          ),
        ],
      ),
    );
  }
}
