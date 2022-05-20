// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_estagio_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HelpEstagioController on _HelpEstagioControllerBase, Store {
  late final _$listaEstagioAtom =
      Atom(name: '_HelpEstagioControllerBase.listaEstagio', context: context);

  @override
  List<HelpEstagioModel> get listaEstagio {
    _$listaEstagioAtom.reportRead();
    return super.listaEstagio;
  }

  @override
  set listaEstagio(List<HelpEstagioModel> value) {
    _$listaEstagioAtom.reportWrite(value, super.listaEstagio, () {
      super.listaEstagio = value;
    });
  }

  late final _$listaPanelEstagioAtom = Atom(
      name: '_HelpEstagioControllerBase.listaPanelEstagio', context: context);

  @override
  List<HelpEstagioPanelModel> get listaPanelEstagio {
    _$listaPanelEstagioAtom.reportRead();
    return super.listaPanelEstagio;
  }

  @override
  set listaPanelEstagio(List<HelpEstagioPanelModel> value) {
    _$listaPanelEstagioAtom.reportWrite(value, super.listaPanelEstagio, () {
      super.listaPanelEstagio = value;
    });
  }

  late final _$getEstagioAsyncAction =
      AsyncAction('_HelpEstagioControllerBase.getEstagio', context: context);

  @override
  Future<void> getEstagio() {
    return _$getEstagioAsyncAction.run(() => super.getEstagio());
  }

  late final _$_HelpEstagioControllerBaseActionController =
      ActionController(name: '_HelpEstagioControllerBase', context: context);

  @override
  void getListaPanelEstagio() {
    final _$actionInfo = _$_HelpEstagioControllerBaseActionController
        .startAction(name: '_HelpEstagioControllerBase.getListaPanelEstagio');
    try {
      return super.getListaPanelEstagio();
    } finally {
      _$_HelpEstagioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_HelpEstagioControllerBaseActionController
        .startAction(name: '_HelpEstagioControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_HelpEstagioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaEstagio: ${listaEstagio},
listaPanelEstagio: ${listaPanelEstagio}
    ''';
  }
}
