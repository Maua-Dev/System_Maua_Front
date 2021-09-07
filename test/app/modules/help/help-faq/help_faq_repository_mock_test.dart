import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-faq/repositories/help_faq_repository.dart';

void main() {
  late HelpFaqRepository helpFaqRepository;

  setUpAll(() {
    helpFaqRepository = HelpFaqRepository();
  });

  test('[TEST] - getInformacaoFaq', () {
    expect(helpFaqRepository.listFaq.isNotEmpty, true);
  });
}
