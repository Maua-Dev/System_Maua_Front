import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/activities/repositories/activities_repository_interface.dart';
import 'package:system_maua_front/app/shared/components/filter_period/filter_period_controller.dart';
import 'package:system_maua_front/app/shared/models/activity_model.dart';

part 'activities_controller.g.dart';

class ActivitiesController = ActivitiesControllerBase
    with _$ActivitiesController;

abstract class ActivitiesControllerBase with Store {
  var controllerFilterPeriod = Modular.get<FilterPeriodController>();

  final IActivitiesRepository repository;

  ActivitiesControllerBase(this.repository) {
    getActivities();
  }

  @observable
  List<ActivityModel> activities = [];

  @computed
  int get activitiesDelivered =>
      activities.where((activity) => activity.delivered).length;

  @computed
  double get activitiesDeliveredPercentual =>
      activitiesDelivered / activities.length;

  @action
  Future<void> getActivities() async {
    activities = await repository.getActivities();
  }
}
