import 'package:system_maua_front/app/modules/help/pages/help-intercambio/pages/oportunidades_abertas/models/universidade_model.dart';
import 'oportunidade_repository_interface.dart';

class OportunidadeRepository implements IOportunidadeRepository {
  List<UniversidadeModel> listaDeUniversidade = [
    UniversidadeModel(
        nome: 'TU Braunshweig - Alemanha',
        descricao:
            'A universidade parceira na Alemanha,\n oferece isenção de taxas para alunos da\n Mauá mediante disponibilidade de vagas.\n A análise das candidaturas e aprovação\n é feita pelo departamento\n de Relações Internacionais.\n\n Número de bolsas: 3'),
  ];

  @override
  Future<List<UniversidadeModel>> getUniversidade() async {
    return Future.value(listaDeUniversidade);
  }
}
