// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'procura_materiais_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ProcuraMateriaisController on ProcuraMateriaisControllerBase, Store {
  final _$materialAtom = Atom(name: 'ProcuraMateriaisControllerBase.material');

  @override
  String get material {
    _$materialAtom.reportRead();
    return super.material;
  }

  @override
  set material(String value) {
    _$materialAtom.reportWrite(value, super.material, () {
      super.material = value;
    });
  }

  final _$listaMateriaisAtom =
      Atom(name: 'ProcuraMateriaisControllerBase.listaMateriais');

  @override
  List<String> get listaMateriais {
    _$listaMateriaisAtom.reportRead();
    return super.listaMateriais;
  }

  @override
  set listaMateriais(List<String> value) {
    _$listaMateriaisAtom.reportWrite(value, super.listaMateriais, () {
      super.listaMateriais = value;
    });
  }

  final _$ProcuraMateriaisControllerBaseActionController =
      ActionController(name: 'ProcuraMateriaisControllerBase');

  @override
  void getListaMateriais() {
    final _$actionInfo = _$ProcuraMateriaisControllerBaseActionController
        .startAction(name: 'ProcuraMateriaisControllerBase.getListaMateriais');
    try {
      return super.getListaMateriais();
    } finally {
      _$ProcuraMateriaisControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setMaterial(String value) {
    final _$actionInfo = _$ProcuraMateriaisControllerBaseActionController
        .startAction(name: 'ProcuraMateriaisControllerBase.setMaterial');
    try {
      return super.setMaterial(value);
    } finally {
      _$ProcuraMateriaisControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
material: ${material},
listaMateriais: ${listaMateriais}
    ''';
  }
}
