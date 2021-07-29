import 'package:system_maua_front/app/shared/enumerates/tipo_materia_enum.dart';
import 'package:system_maua_front/app/shared/models/activity_model.dart';

import 'activities_repository_interface.dart';

class ActivitiesRepository implements IActivitiesRepository {
  List<ActivityModel> activities = [
    ActivityModel(
      subject: TipoMateriaEnum.FT,
      activityName: 'Equação de Bernoulli',
      delivered: true,
      date: '21/07/2021',
      hour: '23:58',
      tipoMateriaEnum: TipoMateriaEnum.FT,
    ),
    ActivityModel(
      subject: TipoMateriaEnum.FT,
      activityName: 'Equação de Bernoulli',
      delivered: false,
      date: '22/07/2021',
      hour: '23:59',
      tipoMateriaEnum: TipoMateriaEnum.FT,
    ),
    ActivityModel(
      subject: TipoMateriaEnum.CALC1,
      activityName: 'Equação de Bernoulli',
      delivered: false,
      date: '23/07/2021',
      hour: '23:57',
      tipoMateriaEnum: TipoMateriaEnum.FT,
    ),
    ActivityModel(
      subject: TipoMateriaEnum.CALC2,
      activityName: 'Equação de Bernoulli',
      delivered: true,
      date: '24/07/2021',
      hour: '23:59',
      tipoMateriaEnum: TipoMateriaEnum.FT,
    ),
  ];

  @override
  Future<List<ActivityModel>> getActivities() {
    print(activities);
    return Future.value(activities);
  }
}
