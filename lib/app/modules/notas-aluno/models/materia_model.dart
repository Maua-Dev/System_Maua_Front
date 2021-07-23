import 'notas_model.dart';

class MateriaModel {
  final String materia;
  final double? notaParcial;
  final List<NotasModel>? provas;
  final List<NotasModel>? trabalhos;

  MateriaModel(
      {required this.materia, this.notaParcial, this.provas, this.trabalhos});

  factory MateriaModel.newInstance() {
    return MateriaModel(
        materia: '', notaParcial: null, provas: null, trabalhos: null);
  }
}
