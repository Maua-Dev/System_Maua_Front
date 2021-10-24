import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/activity_model.dart';

import 'activities_repository_interface.dart';

class ActivitiesRepository implements IActivitiesRepository {
  List<ActivityModel> activities = [
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

  @override
  Future<List<ActivityModel>> getActivities() {
    return Future.value(activities);
  }
}
