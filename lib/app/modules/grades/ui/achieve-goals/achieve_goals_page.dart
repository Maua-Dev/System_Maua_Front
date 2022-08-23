import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/grades/controllers/achieve_goals_controller.dart';
import 'package:system_maua_front/app/modules/grades/enumerates/grades_enum.dart';
import 'package:system_maua_front/app/modules/grades/ui/achieve-goals/widgets/feedback_container_card.dart';
import 'package:system_maua_front/app/modules/grades/ui/achieve-goals/widgets/row_navigator_notes_widget.dart';
import 'package:system_maua_front/app/modules/grades/ui/achieve-goals/widgets/container_name_card.dart';
import 'package:system_maua_front/app/modules/grades/ui/achieve-goals/widgets/list_grades_card.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class AchieveGoalsPage extends StatefulWidget {
  const AchieveGoalsPage({Key? key, subjectName}) : super(key: key);

  @override
  AchieveGoalsPageState createState() => AchieveGoalsPageState();
}

class AchieveGoalsPageState
    extends ModularState<AchieveGoalsPage, AchieveGoalsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBarWidget(
        title: 'Notas',
        icon: Icons.playlist_add_check_outlined,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 32),
              child: Column(
                children: [
                  Observer(builder: (_) {
                    return RowNavigatorGradesWidget();
                  }),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: FeedbackContainerCard(
                      subjectName: controller.average.subject,
                      currentNote: controller.average.currentNote,
                      parcialNote: controller.average.parcialAverage,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  ContainerNameCard(name: 'Provas'),
                  SizedBox(
                    height: 8,
                  ),
                  GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                        childAspectRatio: 3 / 2.2,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.average.tests.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: ListGradesCard(
                            nameActivity:
                                controller.average.tests[index].grade.name,
                            heft: controller.average.tests[index].heft ?? 1.0,
                            finalGrade: controller.average.tests[index].value,
                          ),
                        );
                      }),
                  SizedBox(
                    height: 8.0,
                  ),
                  ContainerNameCard(name: 'Trabalhos'),
                  SizedBox(
                    height: 8,
                  ),
                  GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 4,
                        mainAxisSpacing: 4,
                        childAspectRatio: 3 / 2.2,
                      ),
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.average.tasks.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: ListGradesCard(
                            nameActivity:
                                controller.average.tasks[index].grade.name,
                            heft: controller.average.tasks[index].heft ?? 1.0,
                            finalGrade: controller.average.tasks[index].value,
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}