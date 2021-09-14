// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atingir_metas_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AtingirMetasController on _AtingirMetasControllerBase, Store {
  Computed<String>? _$notaComputadaComputed;

  @override
  String get notaComputada =>
      (_$notaComputadaComputed ??= Computed<String>(() => super.notaComputada,
              name: '_AtingirMetasControllerBase.notaComputada'))
          .value;

  final _$materiaAtom = Atom(name: '_AtingirMetasControllerBase.materia');

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

  final _$metasParaCalculoAtom =
      Atom(name: '_AtingirMetasControllerBase.metasParaCalculo');

  @override
  Map<dynamic, dynamic> get metasParaCalculo {
    _$metasParaCalculoAtom.reportRead();
    return super.metasParaCalculo;
  }

  @override
  set metasParaCalculo(Map<dynamic, dynamic> value) {
    _$metasParaCalculoAtom.reportWrite(value, super.metasParaCalculo, () {
      super.metasParaCalculo = value;
    });
  }

  final _$setNotaAsyncAction =
      AsyncAction('_AtingirMetasControllerBase.setNota');

  @override
  Future<void> setNota(String value, AvaliacaoEnum tituloAvaliacao) {
    return _$setNotaAsyncAction
        .run(() => super.setNota(value, tituloAvaliacao));
  }

  final _$getMateriaAsyncAction =
      AsyncAction('_AtingirMetasControllerBase.getMateria');

  @override
  Future<void> getMateria() {
    return _$getMateriaAsyncAction.run(() => super.getMateria());
  }

  final _$getNotasCalculadasAsyncAction =
      AsyncAction('_AtingirMetasControllerBase.getNotasCalculadas');

  @override
  Future<void> getNotasCalculadas() {
    return _$getNotasCalculadasAsyncAction
        .run(() => super.getNotasCalculadas());
  }

  @override
  String toString() {
    return '''
materia: ${materia},
metasParaCalculo: ${metasParaCalculo},
notaComputada: ${notaComputada}
    ''';
  }
}
