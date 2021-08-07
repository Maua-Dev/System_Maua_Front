// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mural_divulgacao_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MuralDivulgacaoController on _MuralDivulgacaoControllerBase, Store {
  final _$informacaoCaNaoLidoAtom =
      Atom(name: '_MuralDivulgacaoControllerBase.informacaoCaNaoLido');

  @override
  int get informacaoCaNaoLido {
    _$informacaoCaNaoLidoAtom.reportRead();
    return super.informacaoCaNaoLido;
  }

  @override
  set informacaoCaNaoLido(int value) {
    _$informacaoCaNaoLidoAtom.reportWrite(value, super.informacaoCaNaoLido, () {
      super.informacaoCaNaoLido = value;
    });
  }

  final _$informacaoVendasNaoLidoAtom =
      Atom(name: '_MuralDivulgacaoControllerBase.informacaoVendasNaoLido');

  @override
  int get informacaoVendasNaoLido {
    _$informacaoVendasNaoLidoAtom.reportRead();
    return super.informacaoVendasNaoLido;
  }

  @override
  set informacaoVendasNaoLido(int value) {
    _$informacaoVendasNaoLidoAtom
        .reportWrite(value, super.informacaoVendasNaoLido, () {
      super.informacaoVendasNaoLido = value;
    });
  }

  final _$informacaoEquipesNaoLidoAtom =
      Atom(name: '_MuralDivulgacaoControllerBase.informacaoEquipesNaoLido');

  @override
  int get informacaoEquipesNaoLido {
    _$informacaoEquipesNaoLidoAtom.reportRead();
    return super.informacaoEquipesNaoLido;
  }

  @override
  set informacaoEquipesNaoLido(int value) {
    _$informacaoEquipesNaoLidoAtom
        .reportWrite(value, super.informacaoEquipesNaoLido, () {
      super.informacaoEquipesNaoLido = value;
    });
  }

  final _$informacaoEstagioNaoLidoAtom =
      Atom(name: '_MuralDivulgacaoControllerBase.informacaoEstagioNaoLido');

  @override
  int get informacaoEstagioNaoLido {
    _$informacaoEstagioNaoLidoAtom.reportRead();
    return super.informacaoEstagioNaoLido;
  }

  @override
  set informacaoEstagioNaoLido(int value) {
    _$informacaoEstagioNaoLidoAtom
        .reportWrite(value, super.informacaoEstagioNaoLido, () {
      super.informacaoEstagioNaoLido = value;
    });
  }

  final _$getCaLengthAsyncAction =
      AsyncAction('_MuralDivulgacaoControllerBase.getCaLength');

  @override
  Future<int> getCaLength() {
    return _$getCaLengthAsyncAction.run(() => super.getCaLength());
  }

  final _$getVendasLengthAsyncAction =
      AsyncAction('_MuralDivulgacaoControllerBase.getVendasLength');

  @override
  Future<int> getVendasLength() {
    return _$getVendasLengthAsyncAction.run(() => super.getVendasLength());
  }

  final _$getEquipesLengthAsyncAction =
      AsyncAction('_MuralDivulgacaoControllerBase.getEquipesLength');

  @override
  Future<int> getEquipesLength() {
    return _$getEquipesLengthAsyncAction.run(() => super.getEquipesLength());
  }

  final _$getEstagioLengthAsyncAction =
      AsyncAction('_MuralDivulgacaoControllerBase.getEstagioLength');

  @override
  Future<int> getEstagioLength() {
    return _$getEstagioLengthAsyncAction.run(() => super.getEstagioLength());
  }

  @override
  String toString() {
    return '''
informacaoCaNaoLido: ${informacaoCaNaoLido},
informacaoVendasNaoLido: ${informacaoVendasNaoLido},
informacaoEquipesNaoLido: ${informacaoEquipesNaoLido},
informacaoEstagioNaoLido: ${informacaoEstagioNaoLido}
    ''';
  }
}
