import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/grades/ui/achieve-goals/widgets/navigator_icon_widget.dart';

import 'navigator_icon_widget.dart';

class RowNavigatorGradesWidget extends StatelessWidget {
  final String? subjectName;
  const RowNavigatorGradesWidget({Key? key, this.subjectName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavigatorIconWidget(
            title: 'Atividades',
            route: '',
            subjectName: subjectName,
            icon: Icons.book,
          ),
          NavigatorIconWidget(
            title: 'Atingir metas',
            route: '/medias/atingir-metas',
            subjectName: subjectName,
            icon: Icons.my_location_rounded,
          ),
          NavigatorIconWidget(
            title: 'Estatísticas',
            route: '/medias/estatisticas',
            subjectName: subjectName,
            icon: Icons.insert_chart,
          ),
        ],
      ),
    );
  }
}
