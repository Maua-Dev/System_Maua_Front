import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/grades/controllers/list_grades_controller.dart';
import 'package:system_maua_front/app/modules/grades/ui/widgets/card_grades.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class ListGradesPage extends StatefulWidget {
  const ListGradesPage({Key? key}) : super(key: key);

  @override
  _ListGradesPageState createState() => _ListGradesPageState();
}

class _ListGradesPageState
    extends ModularState<ListGradesPage, ListGradesController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBarWidget(title: 'Médias', icon: Icons.fact_check),
          body: SingleChildScrollView(child: Observer(builder: (_) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.avgs.averages.length,
                      itemBuilder: (_, index) => CardGrades(
                            onTap: () => {
                              Modular.to.pushNamed(
                                '/medias/achieve-goals',
                                arguments: controller.avgs.averages[index],
                              ),
                            },
                            subjectName:
                                controller.avgs.averages[index].subject,
                            parcialGrade: controller
                                .avgs.averages[index].getMediaComputada,
                          )),
                  SizedBox(
                    height: 32,
                  )
                ],
              ),
            );
          }))),
    );
  }
}
