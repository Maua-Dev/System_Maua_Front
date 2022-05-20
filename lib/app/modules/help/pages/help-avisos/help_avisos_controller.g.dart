// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_avisos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HelpAvisosController on _HelpAvisosControllerBase, Store {
  late final _$avisosAtom =
      Atom(name: '_HelpAvisosControllerBase.avisos', context: context);

  @override
  List<AvisosModel> get avisos {
    _$avisosAtom.reportRead();
    return super.avisos;
  }

  @override
  set avisos(List<AvisosModel> value) {
    _$avisosAtom.reportWrite(value, super.avisos, () {
      super.avisos = value;
    });
  }

  late final _$avisosActionAtom =
      Atom(name: '_HelpAvisosControllerBase.avisosAction', context: context);

  @override
  List<AvisosPanelModel> get avisosAction {
    _$avisosActionAtom.reportRead();
    return super.avisosAction;
  }

  @override
  set avisosAction(List<AvisosPanelModel> value) {
    _$avisosActionAtom.reportWrite(value, super.avisosAction, () {
      super.avisosAction = value;
    });
  }

  late final _$getInformacaoAvisosAsyncAction = AsyncAction(
      '_HelpAvisosControllerBase.getInformacaoAvisos',
      context: context);

  @override
  Future<void> getInformacaoAvisos() {
    return _$getInformacaoAvisosAsyncAction
        .run(() => super.getInformacaoAvisos());
  }

  late final _$_HelpAvisosControllerBaseActionController =
      ActionController(name: '_HelpAvisosControllerBase', context: context);

  @override
  void setAvisosAction() {
    final _$actionInfo = _$_HelpAvisosControllerBaseActionController
        .startAction(name: '_HelpAvisosControllerBase.setAvisosAction');
    try {
      return super.setAvisosAction();
    } finally {
      _$_HelpAvisosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_HelpAvisosControllerBaseActionController
        .startAction(name: '_HelpAvisosControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_HelpAvisosControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
avisos: ${avisos},
avisosAction: ${avisosAction}
    ''';
  }
}
