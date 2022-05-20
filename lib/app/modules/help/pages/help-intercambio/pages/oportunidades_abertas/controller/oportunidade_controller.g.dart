// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'oportunidade_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OportunidadeController on _OportunidadeControllerBase, Store {
  late final _$listaUniversidadeAtom = Atom(
      name: '_OportunidadeControllerBase.listaUniversidade', context: context);

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

  late final _$universidadeActionAtom = Atom(
      name: '_OportunidadeControllerBase.universidadeAction', context: context);

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

  late final _$getListRepositoryAsyncAction = AsyncAction(
      '_OportunidadeControllerBase.getListRepository',
      context: context);

  @override
  Future<void> getListRepository() {
    return _$getListRepositoryAsyncAction.run(() => super.getListRepository());
  }

  late final _$_OportunidadeControllerBaseActionController =
      ActionController(name: '_OportunidadeControllerBase', context: context);

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
