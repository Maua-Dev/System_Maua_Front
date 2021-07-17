// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_aluno_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeAlunoController on HomeAlunoControllerBase, Store {
  final _$alunoAtom = Atom(name: 'HomeAlunoControllerBase.aluno');

  @override
  dynamic get aluno {
    _$alunoAtom.reportRead();
    return super.aluno;
  }

  @override
  set aluno(dynamic value) {
    _$alunoAtom.reportWrite(value, super.aluno, () {
      super.aluno = value;
    });
  }

  final _$materiaAtom = Atom(name: 'HomeAlunoControllerBase.materia');

  @override
  dynamic get materia {
    _$materiaAtom.reportRead();
    return super.materia;
  }

  @override
  set materia(dynamic value) {
    _$materiaAtom.reportWrite(value, super.materia, () {
      super.materia = value;
    });
  }

  final _$isOpenAtom = Atom(name: 'HomeAlunoControllerBase.isOpen');

  @override
  bool get isOpen {
    _$isOpenAtom.reportRead();
    return super.isOpen;
  }

  @override
  set isOpen(bool value) {
    _$isOpenAtom.reportWrite(value, super.isOpen, () {
      super.isOpen = value;
    });
  }

  final _$getAlunoAsyncAction = AsyncAction('HomeAlunoControllerBase.getAluno');

  @override
  Future<void> getAluno() {
    return _$getAlunoAsyncAction.run(() => super.getAluno());
  }

  final _$getMateriaAsyncAction =
      AsyncAction('HomeAlunoControllerBase.getMateria');

  @override
  Future<void> getMateria() {
    return _$getMateriaAsyncAction.run(() => super.getMateria());
  }

  final _$trocaOpenAsyncAction =
      AsyncAction('HomeAlunoControllerBase.trocaOpen');

  @override
  Future<void> trocaOpen() {
    return _$trocaOpenAsyncAction.run(() => super.trocaOpen());
  }

  @override
  String toString() {
    return '''
aluno: ${aluno},
materia: ${materia},
isOpen: ${isOpen}
    ''';
  }
}
