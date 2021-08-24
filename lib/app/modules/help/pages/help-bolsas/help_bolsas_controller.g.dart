// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_bolsas_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HelpBolsasController on _HelpBolsasControllerBase, Store {
  final _$isOpenAtom = Atom(name: '_HelpBolsasControllerBase.isOpen');

  @override
  List<bool> get isOpen {
    _$isOpenAtom.reportRead();
    return super.isOpen;
  }

  @override
  set isOpen(List<bool> value) {
    _$isOpenAtom.reportWrite(value, super.isOpen, () {
      super.isOpen = value;
    });
  }

  final _$_HelpBolsasControllerBaseActionController =
      ActionController(name: '_HelpBolsasControllerBase');

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_HelpBolsasControllerBaseActionController
        .startAction(name: '_HelpBolsasControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_HelpBolsasControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isOpen: ${isOpen}
    ''';
  }
}
