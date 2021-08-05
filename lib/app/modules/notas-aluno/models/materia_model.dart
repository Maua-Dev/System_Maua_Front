import 'package:system_maua_front/app/modules/notas-aluno/enumerates/avaliacao_enum.dart';

import 'notas_model.dart';

class MateriaModel {
  final String nome;
  final double notaParcial;
  final List<NotasModel> provas;
  final List<NotasModel> trabalhos;

  MateriaModel(
      {required this.nome,
      required this.notaParcial,
      required this.provas,
      required this.trabalhos});

  factory MateriaModel.newInstance() {
    return MateriaModel(nome: '', notaParcial: 0.0, provas: [
      NotasModel(avaliacao: AvaliacaoEnum.P1, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.P2, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.P3, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.P4, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.PS1, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.PS2, value: null),
    ], trabalhos: [
      NotasModel(avaliacao: AvaliacaoEnum.T1, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T2, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T3, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T4, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T5, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T6, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T7, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T8, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T9, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T10, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T11, value: null),
      NotasModel(avaliacao: AvaliacaoEnum.T12, value: null),
    ]);
  }

  MateriaModel copyWith(
      {String? nome,
      double? notaParcial,
      List<NotasModel>? provas,
      List<NotasModel>? trabalhos}) {
    return MateriaModel(
        nome: nome ?? this.nome,
        notaParcial: notaParcial ?? this.notaParcial,
        provas: provas ?? this.provas,
        trabalhos: trabalhos ?? this.trabalhos);
  }
}
