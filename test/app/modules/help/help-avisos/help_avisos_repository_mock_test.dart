import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-avisos/repositories/help_avisos_repository.dart';

void main() {
  late HelpAvisosRepository helpAvisosRepository;

  setUpAll(() {
    helpAvisosRepository = HelpAvisosRepository();
  });

  test('[TEST] - getInformacaoAvisos', () {
    expect(helpAvisosRepository.listAvisos.isNotEmpty, true);
  });
}
