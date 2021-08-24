import 'package:system_maua_front/app/modules/help/pages/help-softwares/models/softwares_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-softwares/repositories/help_softwares_repository_interface.dart';

class HelpSoftwaresRepository extends IHelpSoftwaresRepository {
  List<SoftwaresModel> listSoftwares = [
    SoftwaresModel(titulo: 'Microsoft Azure', descricao: ''),
    SoftwaresModel(titulo: 'Office 365', descricao: ''),
    SoftwaresModel(titulo: 'Solid Works', descricao: ''),
  ];

  @override
  Future<List<SoftwaresModel>> getInformacaoSoftwares() async {
    return Future.value(listSoftwares);
  }
}
