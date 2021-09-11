import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/repositories/atingir_metas_repository_interface.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/models/materia_model.dart';

import 'enumerates/avaliacao_a_enum.dart';

part 'atingir_metas_controller.g.dart';

class AtingirMetasController = _AtingirMetasControllerBase
    with _$AtingirMetasController;

abstract class _AtingirMetasControllerBase with Store {
  final IAtingirMetasRepository repository;

  _AtingirMetasControllerBase(this.repository) {
    getMateria();
  }

  @computed
  String get notaComputada =>
      'Nota parcial: ' +
      materia.notaParcial.toStringAsFixed(1).replaceAll('.', ',');

  @observable
  MateriaModel materia = MateriaModel.newInstance();

  @observable
  Map metasParaCalculo = {};

  // @observable
  // MateriaModel metasPosCalculo = MateriaModel.newInstance();

  @action
  Future<void> setNota(String value, AvaliacaoEnum tituloAvaliacao) async {
    metasParaCalculo[tituloAvaliacao.name] = value;
  }

  @action
  Future<void> getMateria() async {
    materia = await repository.getMateria();
  }

  @action
  Future<void> getNotasCalculadas() async {
    materia = await repository.getNotasCalculadas();
  }
}
