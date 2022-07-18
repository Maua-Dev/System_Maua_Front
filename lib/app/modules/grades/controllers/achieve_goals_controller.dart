import 'package:mobx/mobx.dart';
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

  @action
  Future<double> calculateAchieveGoals(AveragesModel averageToCalculate) async {
    // média desejada
    var goal = 6;
    // peso de prova
    var kp = averageToCalculate.testHint;
    // peso de trab
    var kt = averageToCalculate.taskHint;
    // soma de pesos de provas total
    var sumKpa = 0.0;
    averageToCalculate.tests.forEach((test) {
      sumKpa += test.heft!;
    });
    // soma de pesos de trabalhos total
    var sumKtb = 0.0;
    averageToCalculate.tasks.forEach((task) {
      sumKtb += task.heft!;
    });
    // soma de pesos de provas não feitas
    var sumKpn = 0.0;
    averageToCalculate.tests.forEach((test) {
      if (test.value == null) {
        sumKpn += test.heft!;
      }
    });
    // soma de pesos de trabalhos não feitos
    var sumKtm = 0.0;
    averageToCalculate.tasks.forEach((task) {
      if (task.value == null) {
        sumKtm += task.heft!;
      }
    });

    var averageTestsDone = 0.0;
    averageToCalculate.tests.forEach((test) {
      if (test.value != null) {
        averageTestsDone +=
            (kp * test.heft! * test.value!) / ((kp + kt) * sumKpa);
      }
    });

    var averageTasksDone = 0.0;
    averageToCalculate.tasks.forEach((task) {
      if (task.value != null) {
        averageTasksDone +=
            (kt * task.heft! * task.value!) / ((kp + kt) * sumKtb);
      }
    });

    var numerator = goal - averageTestsDone - averageTasksDone;
    var denominator =
        (1 / (kp + kt)) * ((kp * sumKpn) / sumKpa + (kt * sumKtm) / sumKtb);
    var achieveGoals = numerator / denominator;
    return achieveGoals;
  }
}
