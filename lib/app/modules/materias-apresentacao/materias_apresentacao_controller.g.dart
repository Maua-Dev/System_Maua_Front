// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materias_apresentacao_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MateriasApresentacaoController
    on _MateriasApresentacaoControllerBase, Store {
  final _$materiaAtom =
      Atom(name: '_MateriasApresentacaoControllerBase.materia');

  @override
  MateriasApresentacaoModel get materia {
    _$materiaAtom.reportRead();
    return super.materia;
  }

  @override
  set materia(MateriasApresentacaoModel value) {
    _$materiaAtom.reportWrite(value, super.materia, () {
      super.materia = value;
    });
  }

  final _$getMateriaAsyncAction =
      AsyncAction('_MateriasApresentacaoControllerBase.getMateria');

  @override
  Future<void> getMateria() {
    return _$getMateriaAsyncAction.run(() => super.getMateria());
  }

  @override
  String toString() {
    return '''
materia: ${materia}
    ''';
  }
}
