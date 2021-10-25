import 'package:system_maua_front/app/modules/notas/pages/atividades/models/atividade_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/atividades/repositories/atividades_repository_interface.dart';

class AtividadesRepository implements IAtividadesRepository {
  List<AtividadeModel> atividades = [
    AtividadeModel(
      nomeAtividade: 'T4 - Teorema de Green',
      entregue: true,
      nota: 9,
    ),
    AtividadeModel(
      nomeAtividade: 'T4 - Teorema de Green',
      entregue: false,
      nota: 0,
    ),
    AtividadeModel(
      nomeAtividade: 'T4 - Teorema de Green',
      entregue: true,
      nota: 9,
    ),
    AtividadeModel(
      nomeAtividade:
          'T4 - Fenômenos do transporte - escoamento externo e interno',
      entregue: true,
      nota: 9,
    ),
    AtividadeModel(
      nomeAtividade:
          'T4 - Fenômenos do transporte - escoamento externo e interno',
      entregue: true,
      nota: 9,
    ),
    AtividadeModel(
      nomeAtividade:
          'T4 - Fenômenos do transporte - escoamento externo e interno',
      entregue: true,
      nota: 9,
    ),
    AtividadeModel(
      nomeAtividade:
          'T4 - Fenômenos do transporte - escoamento externo e interno',
      entregue: true,
      nota: 4,
    ),
    AtividadeModel(
      nomeAtividade:
          'T4 - Fenômenos do transporte - escoamento externo e interno',
      entregue: true,
      nota: 9,
    ),
  ];

  double mediaDeAtividades = 7;

  @override
  Future<List<AtividadeModel>> getAtividades() {
    return Future.value(atividades);
  }

  @override
  Future<double> getMediaDeAtividades() {
    return Future.value(mediaDeAtividades);
  }
}
