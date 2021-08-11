import 'package:system_maua_front/app/shared/models/activity_model.dart';

abstract class IActivitiesRepository {
  Future<List<ActivityModel>> getActivities();
}
