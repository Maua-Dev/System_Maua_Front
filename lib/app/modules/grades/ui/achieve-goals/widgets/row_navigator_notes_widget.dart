import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/grades/controllers/navigator_controller.dart';
import 'package:system_maua_front/app/modules/grades/ui/achieve-goals/widgets/navigator_icon_widget.dart';

import 'navigator_icon_widget.dart';

class RowNavigatorGradesWidget extends StatelessWidget {
  final String? subjectName;
  const RowNavigatorGradesWidget({Key? key, this.subjectName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Modular.get<NavigatorController>();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigatorIconWidget(
            title: 'Atividades',
            onPressed: () {
              controller.toggleIndex(1);
              Modular.to.pushNamed('');
            },
            subjectName: subjectName,
            icon: Icons.book,
            myIndex: 1,
            actualIndex: controller.indexToShow,
          ),
          NavigatorIconWidget(
            title: 'Atingir metas',
            subjectName: subjectName,
            icon: Icons.my_location_rounded,
            myIndex: 2,
            onPressed: () {
              controller.toggleIndex(2);
              Modular.to.pushNamed('/medias/achieve-goals');
            },
            actualIndex: controller.indexToShow,
          ),
          NavigatorIconWidget(
            title: 'Estatísticas',
            onPressed: () {
              controller.toggleIndex(3);
              Modular.to.pushNamed('');
            },
            subjectName: subjectName,
            icon: Icons.insert_chart,
            myIndex: 3,
            actualIndex: controller.indexToShow,
          ),
        ],
      ),
    );
  }
}
