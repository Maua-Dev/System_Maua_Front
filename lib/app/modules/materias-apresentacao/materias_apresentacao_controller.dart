import 'package:mobx/mobx.dart';

import 'repositories/materias_apresentacao_repository_interface.dart';

part 'materias_apresentacao_controller.g.dart';

class MateriasApresentacaoController = _MateriasApresentacaoControllerBase
    with _$MateriasApresentacaoController;

abstract class _MateriasApresentacaoControllerBase with Store {
  final IMateriasApresentacaoRepository repository;
  final String codigoMateria;
  _MateriasApresentacaoControllerBase(
      {required this.repository, required this.codigoMateria});
}
