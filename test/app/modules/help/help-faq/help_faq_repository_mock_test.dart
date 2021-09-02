import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/repositories/help_faq_repository.dart';

void main() {
  late HelpFaqRepository helpSoftwaresRepository;

  setUpAll(() {
    helpSoftwaresRepository = HelpFaqRepository();
  });

  test('[TEST] - getInformacaoFaq', () {
    expect(helpSoftwaresRepository.listFaq.isNotEmpty, true);
  });
}
