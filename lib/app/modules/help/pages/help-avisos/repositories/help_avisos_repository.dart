import 'package:system_maua_front/app/modules/help/pages/help-avisos/models/avisos_model.dart';

import 'help_avisos_repository_interface.dart';

class HelpAvisosRepository extends IHelpAvisosRepository {
  List<AvisosModel> listAvisos = [
    AvisosModel(
        data: '31/07',
        titulo: 'Comunicado sobre as Provas',
        descricao: 'INFORMAMOS QUE DEVIDO AO CODIV AS PROVAS...'),
    AvisosModel(
        data: '05/08',
        titulo: 'Comunicado sobre O retorno as aulas',
        descricao: 'Bora voltar meu povo...')
  ];

  @override
  Future<List<AvisosModel>> getInformacaoAvisos() async {
    return Future.value(listAvisos);
  }
}
