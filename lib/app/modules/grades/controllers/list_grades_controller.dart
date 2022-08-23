import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/grades/repositories/average_repository_interface.dart';
import '../models/average_model.dart';

part 'list_grades_controller.g.dart';

class ListGradesController = ListGradesControllerBase
    with _$ListGradesController;

abstract class ListGradesControllerBase with Store {
  final IAverageRepository avgsRepository;

  ListGradesControllerBase(
    this.avgsRepository,
  ) {
    getAverage();
  }

  @computed
  int get avgMaua => 6;

  @observable
  AverageModel avgs = AverageModel.newInstance();

  @action
  Future<void> getAverage() async {
    avgs = await avgsRepository.getAverage();
  }
}
