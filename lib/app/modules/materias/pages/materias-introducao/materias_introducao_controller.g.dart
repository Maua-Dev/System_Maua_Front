// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materias_introducao_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MateriasIntroducaoController
    on _MateriasIntroducaoControllerBase, Store {
  final _$introducaoAtom =
      Atom(name: '_MateriasIntroducaoControllerBase.introducao');

  @override
  MateriasAulasModel get introducao {
    _$introducaoAtom.reportRead();
    return super.introducao;
  }

  @override
  set introducao(MateriasAulasModel value) {
    _$introducaoAtom.reportWrite(value, super.introducao, () {
      super.introducao = value;
    });
  }

  final _$professoresAtom =
      Atom(name: '_MateriasIntroducaoControllerBase.professores');

  @override
  List<ProfessoresModel> get professores {
    _$professoresAtom.reportRead();
    return super.professores;
  }

  @override
  set professores(List<ProfessoresModel> value) {
    _$professoresAtom.reportWrite(value, super.professores, () {
      super.professores = value;
    });
  }

  final _$getMateriaAsyncAction =
      AsyncAction('_MateriasIntroducaoControllerBase.getMateria');

  @override
  Future<void> getMateria() {
    return _$getMateriaAsyncAction.run(() => super.getMateria());
  }

  @override
  String toString() {
    return '''
introducao: ${introducao},
professores: ${professores}
    ''';
  }
}
