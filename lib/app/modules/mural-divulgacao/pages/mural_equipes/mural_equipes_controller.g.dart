// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mural_equipes_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MuralEquipesController on _MuralEquipesControllerBase, Store {
  late final _$listaEquipesAtom =
      Atom(name: '_MuralEquipesControllerBase.listaEquipes', context: context);

  @override
  List<EquipesModel> get listaEquipes {
    _$listaEquipesAtom.reportRead();
    return super.listaEquipes;
  }

  @override
  set listaEquipes(List<EquipesModel> value) {
    _$listaEquipesAtom.reportWrite(value, super.listaEquipes, () {
      super.listaEquipes = value;
    });
  }

  late final _$listaPanelEquipesAtom = Atom(
      name: '_MuralEquipesControllerBase.listaPanelEquipes', context: context);

  @override
  List<ListPanelModel<EquipesModel>> get listaPanelEquipes {
    _$listaPanelEquipesAtom.reportRead();
    return super.listaPanelEquipes;
  }

  @override
  set listaPanelEquipes(List<ListPanelModel<EquipesModel>> value) {
    _$listaPanelEquipesAtom.reportWrite(value, super.listaPanelEquipes, () {
      super.listaPanelEquipes = value;
    });
  }

  late final _$getEquipesAsyncAction =
      AsyncAction('_MuralEquipesControllerBase.getEquipes', context: context);

  @override
  Future<void> getEquipes() {
    return _$getEquipesAsyncAction.run(() => super.getEquipes());
  }

  late final _$_MuralEquipesControllerBaseActionController =
      ActionController(name: '_MuralEquipesControllerBase', context: context);

  @override
  void getListaPanelEquipes() {
    final _$actionInfo = _$_MuralEquipesControllerBaseActionController
        .startAction(name: '_MuralEquipesControllerBase.getListaPanelEquipes');
    try {
      return super.getListaPanelEquipes();
    } finally {
      _$_MuralEquipesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_MuralEquipesControllerBaseActionController
        .startAction(name: '_MuralEquipesControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_MuralEquipesControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaEquipes: ${listaEquipes},
listaPanelEquipes: ${listaPanelEquipes}
    ''';
  }
}
