// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mural_equipes_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MuralEquipesController on _MuralEquipesControllerBase, Store {
  final _$listaEquipesAtom =
      Atom(name: '_MuralEquipesControllerBase.listaEquipes');

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

  final _$getEquipesAsyncAction =
      AsyncAction('_MuralEquipesControllerBase.getEquipes');

  @override
  Future getEquipes() {
    return _$getEquipesAsyncAction.run(() => super.getEquipes());
  }

  @override
  String toString() {
    return '''
listaEquipes: ${listaEquipes}
    ''';
  }
}
