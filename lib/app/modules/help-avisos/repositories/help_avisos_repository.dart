import 'package:system_maua_front/app/modules/help-avisos/models/avisos_model.dart';
import 'package:system_maua_front/app/modules/help-avisos/repositories/help_avisos_repository_interface.dart';

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

  // @override
  // Future<String> getInformacaoData() async {
  //   return Future.value(listAvisos.where((element) => true).first.data);
  // }

  @override
  Future<int> getInformacaoDescricao() {
    // TODO: implement getInformacaoDescricao
    throw UnimplementedError();
  }

  @override
  Future<int> getInformacaoTitulo() {
    // TODO: implement getInformacaoTitulo
    throw UnimplementedError();
  }

  @override
  Future<int> getInformacaoData() {
    // TODO: implement getInformacaoData
    throw UnimplementedError();
  }
}
