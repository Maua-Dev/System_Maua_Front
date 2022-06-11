import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/grades/models/average_model.dart';
import 'package:system_maua_front/app/modules/grades/models/averages_model.dart';

part 'achieve_goals_controller.g.dart';

class AchieveGoalsController = _AchieveGoalsControllerBase
    with _$AchieveGoalsController;

abstract class _AchieveGoalsControllerBase with Store {
  final AveragesModel average;

  _AchieveGoalsControllerBase(this.average);

  // @action
  // String setGrade(int index){
  //   average.tests[index].valuetoStringAsFixed(1).replaceAll('.', ',');
  // }

  // @computed
  // String get replaceGrade => average.;

}
