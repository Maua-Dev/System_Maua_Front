import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/activities/repositories/activities_repository.dart';

void main() {
  late ActivitiesRepository activitiesRepository;

  setUpAll(() {
    activitiesRepository = ActivitiesRepository();
  });

  test('[TEST] - getActivity', () {
    expect(activitiesRepository.activities[0].subject.isNotEmpty, true);
    expect(activitiesRepository.activities[0].activityName.isNotEmpty, true);
    expect(activitiesRepository.activities[0].delivered, true | false);
    expect(activitiesRepository.activities[0].date.isNotEmpty, true);
    expect(activitiesRepository.activities[0].hour.isNotEmpty, true);
  });
}
