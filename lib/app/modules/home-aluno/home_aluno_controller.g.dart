// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_aluno_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeAlunoController on HomeAlunoControllerBase, Store {
  final _$alunoAtom = Atom(name: 'HomeAlunoControllerBase.aluno');

  @override
  AlunoModel get aluno {
    _$alunoAtom.reportRead();
    return super.aluno;
  }

  @override
  set aluno(AlunoModel value) {
    _$alunoAtom.reportWrite(value, super.aluno, () {
      super.aluno = value;
    });
  }

  final _$aulaAtom = Atom(name: 'HomeAlunoControllerBase.aula');

  @override
  AulaModel get aula {
    _$aulaAtom.reportRead();
    return super.aula;
  }

  @override
  set aula(AulaModel value) {
    _$aulaAtom.reportWrite(value, super.aula, () {
      super.aula = value;
    });
  }

  final _$getAlunoAsyncAction = AsyncAction('HomeAlunoControllerBase.getAluno');

  @override
  Future<void> getAluno() {
    return _$getAlunoAsyncAction.run(() => super.getAluno());
  }

  final _$getAulaAsyncAction = AsyncAction('HomeAlunoControllerBase.getAula');

  @override
  Future<void> getAula() {
    return _$getAulaAsyncAction.run(() => super.getAula());
  }

  @override
  String toString() {
    return '''
aluno: ${aluno},
aula: ${aula}
    ''';
  }
}
