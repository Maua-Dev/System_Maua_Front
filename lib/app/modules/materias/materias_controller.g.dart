// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materias_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MateriasController on MateriasControllerBase, Store {
  final _$materiasAtom = Atom(name: 'MateriasControllerBase.materias');

  @override
  List<MateriasModel> get materias {
    _$materiasAtom.reportRead();
    return super.materias;
  }

  @override
  set materias(List<MateriasModel> value) {
    _$materiasAtom.reportWrite(value, super.materias, () {
      super.materias = value;
    });
  }

  final _$getMateriasAsyncAction =
      AsyncAction('MateriasControllerBase.getMaterias');

  @override
  Future<void> getMaterias() {
    return _$getMateriasAsyncAction.run(() => super.getMaterias());
  }

  final _$MateriasControllerBaseActionController =
      ActionController(name: 'MateriasControllerBase');

  @override
  List<String> getFotosProfessores(int index) {
    final _$actionInfo = _$MateriasControllerBaseActionController.startAction(
        name: 'MateriasControllerBase.getFotosProfessores');
    try {
      return super.getFotosProfessores(index);
    } finally {
      _$MateriasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
materias: ${materias}
    ''';
  }
}