import 'package:system_maua_front/app/modules/help/pages/help-estagio/models/help_estagio_model.dart';

abstract class IHelpEstagioRepository{
  Future<List<HelpEstagioModel>> getEstagio();
}