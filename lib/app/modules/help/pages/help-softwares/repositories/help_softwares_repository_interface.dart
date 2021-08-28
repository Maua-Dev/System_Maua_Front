import 'package:system_maua_front/app/modules/help/pages/help-softwares/models/softwares_model.dart';

abstract class IHelpSoftwaresRepository {
  Future<List<SoftwaresModel>> getInformacaoSoftwares();
}
