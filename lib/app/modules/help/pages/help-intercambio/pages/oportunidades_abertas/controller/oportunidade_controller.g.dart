// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oportunidade_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$OportunidadeController on _OportunidadeControllerBase, Store {
  final _$listaUniversidadeAtom =
      Atom(name: '_OportunidadeControllerBase.listaUniversidade');

  @override
  List<UniversidadeModel> get listaUniversidade {
    _$listaUniversidadeAtom.reportRead();
    return super.listaUniversidade;
  }

  @override
  set listaUniversidade(List<UniversidadeModel> value) {
    _$listaUniversidadeAtom.reportWrite(value, super.listaUniversidade, () {
      super.listaUniversidade = value;
    });
  }

  final _$universidadeActionAtom =
      Atom(name: '_OportunidadeControllerBase.universidadeAction');

  @override
  List<UniversidadePanelModel> get universidadeAction {
    _$universidadeActionAtom.reportRead();
    return super.universidadeAction;
  }

  @override
  set universidadeAction(List<UniversidadePanelModel> value) {
    _$universidadeActionAtom.reportWrite(value, super.universidadeAction, () {
      super.universidadeAction = value;
    });
  }

  final _$getListRepositoryAsyncAction =
      AsyncAction('_OportunidadeControllerBase.getListRepository');

  @override
  Future<void> getListRepository() {
    return _$getListRepositoryAsyncAction.run(() => super.getListRepository());
  }

  final _$_OportunidadeControllerBaseActionController =
      ActionController(name: '_OportunidadeControllerBase');

  @override
  void setUniversidadeAction() {
    final _$actionInfo = _$_OportunidadeControllerBaseActionController
        .startAction(name: '_OportunidadeControllerBase.setUniversidadeAction');
    try {
      return super.setUniversidadeAction();
    } finally {
      _$_OportunidadeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_OportunidadeControllerBaseActionController
        .startAction(name: '_OportunidadeControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_OportunidadeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaUniversidade: ${listaUniversidade},
universidadeAction: ${universidadeAction}
    ''';
  }
}
