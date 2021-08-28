import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/repositories/help_softwares_repository.dart';

void main() {
  late HelpSoftwaresRepository helpSoftwaresRepository;

  setUpAll(() {
    helpSoftwaresRepository = HelpSoftwaresRepository();
  });

  test('[TEST] - getInformacaoSoftwares', () {
    expect(helpSoftwaresRepository.listSoftwares.isNotEmpty, true);
  });
}
