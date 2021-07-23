// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notas_aluno_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$NotasAlunoController on _NotasAlunoControllerBase, Store {
  final _$materiaAtom = Atom(name: '_NotasAlunoControllerBase.materia');

  @override
  MateriaModel get materia {
    _$materiaAtom.reportRead();
    return super.materia;
  }

  @override
  set materia(MateriaModel value) {
    _$materiaAtom.reportWrite(value, super.materia, () {
      super.materia = value;
    });
  }

  final _$getMateriaAsyncAction =
      AsyncAction('_NotasAlunoControllerBase.getMateria');

  @override
  Future<void> getMateria() {
    return _$getMateriaAsyncAction.run(() => super.getMateria());
  }

  final _$_NotasAlunoControllerBaseActionController =
      ActionController(name: '_NotasAlunoControllerBase');

  @override
  int returnIndex(int index) {
    final _$actionInfo = _$_NotasAlunoControllerBaseActionController
        .startAction(name: '_NotasAlunoControllerBase.returnIndex');
    try {
      return super.returnIndex(index);
    } finally {
      _$_NotasAlunoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  int returnIndexIncremento(int index) {
    final _$actionInfo = _$_NotasAlunoControllerBaseActionController
        .startAction(name: '_NotasAlunoControllerBase.returnIndexIncremento');
    try {
      return super.returnIndexIncremento(index);
    } finally {
      _$_NotasAlunoControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
materia: ${materia}
    ''';
  }
}
