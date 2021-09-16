// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lista_vendas_materiais_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ListaVendasMateriaisController
    on _ListaVendasMateriaisControllerBase, Store {
  final _$listaVendasAtom =
      Atom(name: '_ListaVendasMateriaisControllerBase.listaVendas');

  @override
  List<InformacaoMaterialModel> get listaVendas {
    _$listaVendasAtom.reportRead();
    return super.listaVendas;
  }

  @override
  set listaVendas(List<InformacaoMaterialModel> value) {
    _$listaVendasAtom.reportWrite(value, super.listaVendas, () {
      super.listaVendas = value;
    });
  }

  final _$getVendasAsyncAction =
      AsyncAction('_ListaVendasMateriaisControllerBase.getVendas');

  @override
  Future<void> getVendas() {
    return _$getVendasAsyncAction.run(() => super.getVendas());
  }

  final _$_ListaVendasMateriaisControllerBaseActionController =
      ActionController(name: '_ListaVendasMateriaisControllerBase');

  @override
  void navigateTo(InformacaoMaterialModel informacaoMaterialModel) {
    final _$actionInfo = _$_ListaVendasMateriaisControllerBaseActionController
        .startAction(name: '_ListaVendasMateriaisControllerBase.navigateTo');
    try {
      return super.navigateTo(informacaoMaterialModel);
    } finally {
      _$_ListaVendasMateriaisControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaVendas: ${listaVendas}
    ''';
  }
}
