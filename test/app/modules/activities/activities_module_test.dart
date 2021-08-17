import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/app_module.dart';
import 'package:system_maua_front/app/modules/activities/activities_controller.dart';
import 'package:system_maua_front/app/modules/activities/activities_module.dart';
import 'package:system_maua_front/app/modules/activities/repositories/activities_repository.dart';
import 'package:system_maua_front/app/shared/components/filter_period/filter_period_controller.dart';

void main() {
  initModules([ActivitiesModule(), AppModule()]);

  test('[TEST] - Injeção do ActivitiesRepository', () {
    var activitiesController = Modular.get<ActivitiesController>();
    expect(
        activitiesController.repository, isInstanceOf<ActivitiesRepository>());
  });

  test('[TEST] - Injeção do ActivitiesController', () {
    Modular.get<ActivitiesController>();
  });

  test('[TEST] - Injeção do FilterPeriodController', () {
    Modular.get<FilterPeriodController>();
  });
}
