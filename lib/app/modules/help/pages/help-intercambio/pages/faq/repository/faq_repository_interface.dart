import 'package:system_maua_front/app/modules/help/pages/help-faq/models/faq_model.dart';

abstract class IFaqIntercambioRepository {
  Future<List<FaqModel>> getFaq();
}
