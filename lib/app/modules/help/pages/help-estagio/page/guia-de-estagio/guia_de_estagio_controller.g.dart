// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'guia_de_estagio_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$GuiaEstagioController on _GuiaEstagioControllerBase, Store {
  late final _$listaGuiaEstagioAtom = Atom(
      name: '_GuiaEstagioControllerBase.listaGuiaEstagio', context: context);

  @override
  List<GuiaEstagioModel> get listaGuiaEstagio {
    _$listaGuiaEstagioAtom.reportRead();
    return super.listaGuiaEstagio;
  }

  @override
  set listaGuiaEstagio(List<GuiaEstagioModel> value) {
    _$listaGuiaEstagioAtom.reportWrite(value, super.listaGuiaEstagio, () {
      super.listaGuiaEstagio = value;
    });
  }

  late final _$listaPanelGuiaEstagioAtom = Atom(
      name: '_GuiaEstagioControllerBase.listaPanelGuiaEstagio',
      context: context);

  @override
  List<GuiaEstagioPanelModel> get listaPanelGuiaEstagio {
    _$listaPanelGuiaEstagioAtom.reportRead();
    return super.listaPanelGuiaEstagio;
  }

  @override
  set listaPanelGuiaEstagio(List<GuiaEstagioPanelModel> value) {
    _$listaPanelGuiaEstagioAtom.reportWrite(value, super.listaPanelGuiaEstagio,
        () {
      super.listaPanelGuiaEstagio = value;
    });
  }

  late final _$getGuiaEstagioAsyncAction = AsyncAction(
      '_GuiaEstagioControllerBase.getGuiaEstagio',
      context: context);

  @override
  Future<void> getGuiaEstagio() {
    return _$getGuiaEstagioAsyncAction.run(() => super.getGuiaEstagio());
  }

  late final _$_GuiaEstagioControllerBaseActionController =
      ActionController(name: '_GuiaEstagioControllerBase', context: context);

  @override
  void getListaPanelGuiaEstagio() {
    final _$actionInfo =
        _$_GuiaEstagioControllerBaseActionController.startAction(
            name: '_GuiaEstagioControllerBase.getListaPanelGuiaEstagio');
    try {
      return super.getListaPanelGuiaEstagio();
    } finally {
      _$_GuiaEstagioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_GuiaEstagioControllerBaseActionController
        .startAction(name: '_GuiaEstagioControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_GuiaEstagioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaGuiaEstagio: ${listaGuiaEstagio},
listaPanelGuiaEstagio: ${listaPanelGuiaEstagio}
    ''';
  }
}
