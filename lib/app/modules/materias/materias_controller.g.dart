// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materias_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MateriasController on MateriasControllerBase, Store {
  late final _$materiasAtom =
      Atom(name: 'MateriasControllerBase.materias', context: context);

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

  late final _$getMateriasAsyncAction =
      AsyncAction('MateriasControllerBase.getMaterias', context: context);

  @override
  Future<void> getMaterias() {
    return _$getMateriasAsyncAction.run(() => super.getMaterias());
  }

  late final _$MateriasControllerBaseActionController =
      ActionController(name: 'MateriasControllerBase', context: context);

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
