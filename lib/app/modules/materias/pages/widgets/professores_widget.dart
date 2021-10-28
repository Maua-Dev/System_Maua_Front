import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/models/professores_model.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:getwidget/getwidget.dart';

class ProfessoresWidget extends StatelessWidget {
  const ProfessoresWidget({
    Key? key,
    required this.listaProfessores,
    required this.index,
  }) : super(key: key);

  final List<ProfessoresModel>? listaProfessores;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GFAvatar(
          backgroundImage: NetworkImage(
            listaProfessores![index].foto!,
          ),
        ),
        SizedBox(
          width: 4,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              listaProfessores![index].nome,
              style: TextStyle(color: AppColors.strongLetter, fontSize: 18),
            ),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: [
                  Icon(
                    Icons.message,
                    color: AppColors.lightBlue,
                  ),
                  Text(
                    'Mensagem',
                    style: TextStyle(color: AppColors.lightBlue, fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
