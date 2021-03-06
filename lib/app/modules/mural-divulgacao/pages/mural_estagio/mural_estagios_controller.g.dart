// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mural_estagios_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MuralEstagiosController on _MuralEstagiosControllerBase, Store {
  final _$listaEstagiosAtom =
      Atom(name: '_MuralEstagiosControllerBase.listaEstagios');

  @override
  List<EstagiosModel> get listaEstagios {
    _$listaEstagiosAtom.reportRead();
    return super.listaEstagios;
  }

  @override
  set listaEstagios(List<EstagiosModel> value) {
    _$listaEstagiosAtom.reportWrite(value, super.listaEstagios, () {
      super.listaEstagios = value;
    });
  }

  final _$listaPanelEstagiosAtom =
      Atom(name: '_MuralEstagiosControllerBase.listaPanelEstagios');

  @override
  List<ListPanelModel<EstagiosModel>> get listaPanelEstagios {
    _$listaPanelEstagiosAtom.reportRead();
    return super.listaPanelEstagios;
  }

  @override
  set listaPanelEstagios(List<ListPanelModel<EstagiosModel>> value) {
    _$listaPanelEstagiosAtom.reportWrite(value, super.listaPanelEstagios, () {
      super.listaPanelEstagios = value;
    });
  }

  final _$getEstagiosAsyncAction =
      AsyncAction('_MuralEstagiosControllerBase.getEstagios');

  @override
  Future<void> getEstagios() {
    return _$getEstagiosAsyncAction.run(() => super.getEstagios());
  }

  final _$_MuralEstagiosControllerBaseActionController =
      ActionController(name: '_MuralEstagiosControllerBase');

  @override
  void setListaPanelEstagios() {
    final _$actionInfo =
        _$_MuralEstagiosControllerBaseActionController.startAction(
            name: '_MuralEstagiosControllerBase.setListaPanelEstagios');
    try {
      return super.setListaPanelEstagios();
    } finally {
      _$_MuralEstagiosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_MuralEstagiosControllerBaseActionController
        .startAction(name: '_MuralEstagiosControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_MuralEstagiosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaEstagios: ${listaEstagios},
listaPanelEstagios: ${listaPanelEstagios}
    ''';
  }
}
