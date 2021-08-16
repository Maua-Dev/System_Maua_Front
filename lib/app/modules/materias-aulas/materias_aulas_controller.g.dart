// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'materias_aulas_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MateriasAulasController on _MateriasAulasControllerBase, Store {
  final _$aulaAtom = Atom(name: '_MateriasAulasControllerBase.aula');

  @override
  MateriasAulasModel get aula {
    _$aulaAtom.reportRead();
    return super.aula;
  }

  @override
  set aula(MateriasAulasModel value) {
    _$aulaAtom.reportWrite(value, super.aula, () {
      super.aula = value;
    });
  }

  @override
  String toString() {
    return '''
aula: ${aula}
    ''';
  }
}
