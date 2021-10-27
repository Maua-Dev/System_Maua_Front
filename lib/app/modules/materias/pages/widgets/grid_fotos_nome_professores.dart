import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/models/professores_model.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class GridFotoNomeProfessores extends StatelessWidget {
  final List<ProfessoresModel>? listaProfessores;
  const GridFotoNomeProfessores({
    Key? key,
    this.listaProfessores,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listaProfessores != null
        ? Container(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              itemCount: listaProfessores!.length,
              itemBuilder: (context, index) => CircleAvatar(
                radius: 6,
                backgroundColor: Colors.transparent,
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.network(
                        listaProfessores![index].foto!,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            listaProfessores![index].nome,
                            style: TextStyle(
                                color: AppColors.strongLetter, fontSize: 18),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Mensagem',
                              style: TextStyle(color: AppColors.lightBlue),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        : SizedBox.shrink();
  }
}
