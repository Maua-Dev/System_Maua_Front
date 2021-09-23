import 'package:system_maua_front/app/modules/help/pages/help-intercambio/oportunidades_abertas/models/universidade_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-intercambio/oportunidades_abertas/repository/i_oportunidade_repository.dart';

class OportunidadeRepository implements IOportunidadeRepository {
  List<UniversidadeModel> listaDeUniversidade = [
    UniversidadeModel(
        nome: 'TU Braunshweig - Alemanha',
        descricao:
            'A universidade parceira na Alemanha, oferece isenção de taxas para alunos da Mauá mediante disponibilidade de vagas. A análise das candidaturas e aprovação é feita pelo departamento de Relações Internacionais. Número de bolsas: 3'),
  ];

  @override
  Future<List<UniversidadeModel>> getUniversidade() async {
    return Future.value(listaDeUniversidade);
  }
}
