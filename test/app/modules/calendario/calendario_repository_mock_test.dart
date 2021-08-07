import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository.dart';

void main() {
  late CalendarRepository calendarRepository;

  setUpAll(() {
    calendarRepository = CalendarRepository();
  });

  test('[TEST] - getAvaliacoes', () {
    expect(calendarRepository.listaAvaliacoes.isNotEmpty, true);
  });
}
