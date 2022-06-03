// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'atingir_metas_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AtingirMetasController on _AtingirMetasControllerBase, Store {
  Computed<String>? _$notaComputadaComputed;

  @override
  String get notaComputada =>
      (_$notaComputadaComputed ??= Computed<String>(() => super.notaComputada,
              name: '_AtingirMetasControllerBase.notaComputada'))
          .value;

  late final _$materiaAtom =
      Atom(name: '_AtingirMetasControllerBase.materia', context: context);

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

  late final _$metasParaCalculoAtom = Atom(
      name: '_AtingirMetasControllerBase.metasParaCalculo', context: context);

  @override
  Map<String, String> get metasParaCalculo {
    _$metasParaCalculoAtom.reportRead();
    return super.metasParaCalculo;
  }

  @override
  set metasParaCalculo(Map<String, String> value) {
    _$metasParaCalculoAtom.reportWrite(value, super.metasParaCalculo, () {
      super.metasParaCalculo = value;
    });
  }

  late final _$setNotaAsyncAction =
      AsyncAction('_AtingirMetasControllerBase.setNota', context: context);

  @override
  Future<void> setNota(String value, AvaliacaoEnum tituloAvaliacao) {
    return _$setNotaAsyncAction
        .run(() => super.setNota(value, tituloAvaliacao));
  }

  late final _$getMateriaAsyncAction =
      AsyncAction('_AtingirMetasControllerBase.getMateria', context: context);

  @override
  Future<void> getMateria() {
    return _$getMateriaAsyncAction.run(() => super.getMateria());
  }

  late final _$getNotasCalculadasAsyncAction = AsyncAction(
      '_AtingirMetasControllerBase.getNotasCalculadas',
      context: context);

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
