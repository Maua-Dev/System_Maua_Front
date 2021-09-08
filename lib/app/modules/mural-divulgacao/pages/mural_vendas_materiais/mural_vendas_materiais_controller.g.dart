// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mural_vendas_materiais_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MuralVendasMateriaisController
    on _MuralVendasMateriaisControllerBase, Store {
  final _$listaVendasAtom =
      Atom(name: '_MuralVendasMateriaisControllerBase.listaVendas');

  @override
  List<VendasMateriaisModel> get listaVendas {
    _$listaVendasAtom.reportRead();
    return super.listaVendas;
  }

  @override
  set listaVendas(List<VendasMateriaisModel> value) {
    _$listaVendasAtom.reportWrite(value, super.listaVendas, () {
      super.listaVendas = value;
    });
  }

  final _$listaPanelVendasMateriaisAtom = Atom(
      name: '_MuralVendasMateriaisControllerBase.listaPanelVendasMateriais');

  @override
  List<dynamic> get listaPanelVendasMateriais {
    _$listaPanelVendasMateriaisAtom.reportRead();
    return super.listaPanelVendasMateriais;
  }

  @override
  set listaPanelVendasMateriais(List<dynamic> value) {
    _$listaPanelVendasMateriaisAtom
        .reportWrite(value, super.listaPanelVendasMateriais, () {
      super.listaPanelVendasMateriais = value;
    });
  }

  final _$getVendasAsyncAction =
      AsyncAction('_MuralVendasMateriaisControllerBase.getVendas');

  @override
  Future<void> getVendas() {
    return _$getVendasAsyncAction.run(() => super.getVendas());
  }

  final _$_MuralVendasMateriaisControllerBaseActionController =
      ActionController(name: '_MuralVendasMateriaisControllerBase');

  @override
  void getListaPanelVendasMateriais() {
    final _$actionInfo =
        _$_MuralVendasMateriaisControllerBaseActionController.startAction(
            name:
                '_MuralVendasMateriaisControllerBase.getListaPanelVendasMateriais');
    try {
      return super.getListaPanelVendasMateriais();
    } finally {
      _$_MuralVendasMateriaisControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_MuralVendasMateriaisControllerBaseActionController
        .startAction(name: '_MuralVendasMateriaisControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_MuralVendasMateriaisControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaVendas: ${listaVendas},
listaPanelVendasMateriais: ${listaPanelVendasMateriais}
    ''';
  }
}
