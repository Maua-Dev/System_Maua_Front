import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/enumerates/avaliacao_a_enum.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/models/materia_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/models/notas_model.dart';

import 'atingir_metas_repository_interface.dart';

class AtingirMetasRepository implements IAtingirMetasRepository {
  var materia = MateriaModel(
      nome: 'Resistência dos Materiais',
      notaParcial: 9.0,
      provas: [
        NotasModel(avaliacao: AvaliacaoEnum.P1, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.P2, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.P3, value: 5.0),
        NotasModel(avaliacao: AvaliacaoEnum.P4, value: 1.0),
        NotasModel(avaliacao: AvaliacaoEnum.PS1, value: 6.0),
        NotasModel(avaliacao: AvaliacaoEnum.PS2, value: 9.0),
      ],
      trabalhos: [
        NotasModel(avaliacao: AvaliacaoEnum.T1, value: 5.0),
        NotasModel(avaliacao: AvaliacaoEnum.T2, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T3, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T4, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T5, value: null),
        NotasModel(avaliacao: AvaliacaoEnum.T6, value: null),
        NotasModel(avaliacao: AvaliacaoEnum.T7, value: null),
        NotasModel(avaliacao: AvaliacaoEnum.T8, value: null),
        NotasModel(avaliacao: AvaliacaoEnum.T9, value: null),
        NotasModel(avaliacao: AvaliacaoEnum.T10, value: null),
        NotasModel(avaliacao: AvaliacaoEnum.T11, value: null),
        NotasModel(avaliacao: AvaliacaoEnum.T12, value: null),
      ]);

  var notasCalculadas = MateriaModel(
      nome: 'Resistência dos Materiais',
      notaParcial: 9.0,
      provas: [
        NotasModel(avaliacao: AvaliacaoEnum.P1, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.P2, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.P3, value: 5.0),
        NotasModel(avaliacao: AvaliacaoEnum.P4, value: 1.0),
        NotasModel(avaliacao: AvaliacaoEnum.PS1, value: 6.0),
        NotasModel(avaliacao: AvaliacaoEnum.PS2, value: 9.0),
      ],
      trabalhos: [
        NotasModel(avaliacao: AvaliacaoEnum.T1, value: 5.0),
        NotasModel(avaliacao: AvaliacaoEnum.T2, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T3, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T4, value: 9.0),
        NotasModel(avaliacao: AvaliacaoEnum.T5, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T6, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T7, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T8, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T9, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T10, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T11, value: 6),
        NotasModel(avaliacao: AvaliacaoEnum.T12, value: 6),
      ]);

  @override
  Future<MateriaModel> getMateria() {
    return Future.value(materia);
  }

  @override
  Future<MateriaModel> getNotasCalculadas() {
    return Future.value(notasCalculadas);
  }
}
