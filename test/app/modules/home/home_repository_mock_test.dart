import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/home/repositories/home_repository.dart';

void main() {
  late HomeRepository homeRepository;

  setUpAll(() {
    homeRepository = HomeRepository();
  });
  test('[TEST] - getUser', () {
    expect(homeRepository.student.ra.isNotEmpty, true);
    expect(homeRepository.student.name.isNotEmpty, true);
  });

  test('[TEST] - getClass', () {
    expect(homeRepository.lectures.isNotEmpty, true);
  });
}
