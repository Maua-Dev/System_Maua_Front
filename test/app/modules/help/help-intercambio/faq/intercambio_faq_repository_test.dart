import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/faq/repository/faq_repository.dart';

void main() {
  late FaqIntercambioRepository repository;

  setUpAll(() {
    repository = FaqIntercambioRepository();
  });

  test('[TEST] - getFaq ', () {
    expect(repository.faqList.isNotEmpty, true);
  });
}
