// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'informacao_material_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$InformacaoMaterialController
    on InformacaoMaterialControllerBase, Store {
  final _$materialAtom =
      Atom(name: 'InformacaoMaterialControllerBase.material');

  @override
  InformacaoMaterialModel get material {
    _$materialAtom.reportRead();
    return super.material;
  }

  @override
  set material(InformacaoMaterialModel value) {
    _$materialAtom.reportWrite(value, super.material, () {
      super.material = value;
    });
  }

  final _$getMaterialEspecificoAsyncAction =
      AsyncAction('InformacaoMaterialControllerBase.getMaterialEspecifico');

  @override
  Future<void> getMaterialEspecifico() {
    return _$getMaterialEspecificoAsyncAction
        .run(() => super.getMaterialEspecifico());
  }

  @override
  String toString() {
    return '''
material: ${material}
    ''';
  }
}
