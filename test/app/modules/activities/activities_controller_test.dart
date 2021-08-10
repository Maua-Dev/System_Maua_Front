import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/app_module.dart';
import 'package:system_maua_front/app/modules/activities/activities_controller.dart';
import 'package:system_maua_front/app/modules/activities/repositories/activities_repository_interface.dart';
import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/activity_model.dart';

import 'activities_controller_test.mocks.dart';

@GenerateMocks([IActivitiesRepository])
void main() {
  initModule(AppModule());
  IActivitiesRepository repository = MockIActivitiesRepository();
  late ActivitiesController activitiesController;
  var activityTest = <ActivityModel>[
    ActivityModel(
      subject: TipoMateriaEnum.FT.name,
      activityName: 'Equação de Bernoulli',
      delivered: true,
      date: '21/07/2021',
      hour: '23:58',
    ),
    ActivityModel(
      subject: TipoMateriaEnum.RESMAT.name,
      activityName: 'Equação de Bernoulli',
      delivered: true,
      date: '22/07/2021',
      hour: '23:59',
    ),
    ActivityModel(
      subject: TipoMateriaEnum.CALC2.name,
      activityName: 'Equação de Bernoulli',
      delivered: false,
      date: '23/07/2021',
      hour: '23:57',
    ),
    ActivityModel(
      subject: TipoMateriaEnum.CALC2.name,
      activityName: 'Equação de Bernoulli gigante de mais aaaaa aaaaa aaaa',
      delivered: true,
      date: '24/07/2021',
      hour: '23:59',
    ),
  ];

  setUpAll(() {
    when(repository.getActivities()).thenAnswer((_) async => activityTest);
    activitiesController = ActivitiesController(repository);
  });

  test('[TEST] - getActivities', () async {
    await activitiesController.getActivities();
    expect(activitiesController.activities, activityTest);
  });
}
