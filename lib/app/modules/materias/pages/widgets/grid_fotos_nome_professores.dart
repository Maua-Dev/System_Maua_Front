import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/materias/pages/widgets/professores_widget.dart';
import 'package:system_maua_front/app/shared/models/professores_model.dart';

class GridFotoNomeProfessores extends StatelessWidget {
  final List<ProfessoresModel>? listaProfessores;
  const GridFotoNomeProfessores({
    Key? key,
    this.listaProfessores,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return listaProfessores != null
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 4 / 2,
            ),
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: listaProfessores!.length,
            itemBuilder: (context, index) => ProfessoresWidget(
              listaProfessores: listaProfessores,
              index: index,
            ),
          )
        : SizedBox.shrink();
  }
}
