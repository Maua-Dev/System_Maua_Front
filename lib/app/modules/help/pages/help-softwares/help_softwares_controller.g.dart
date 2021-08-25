// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_softwares_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HelpSoftwaresController on _HelpSoftwaresControllerBase, Store {
  final _$softwaresAtom = Atom(name: '_HelpSoftwaresControllerBase.softwares');

  @override
  List<SoftwaresModel> get softwares {
    _$softwaresAtom.reportRead();
    return super.softwares;
  }

  @override
  set softwares(List<SoftwaresModel> value) {
    _$softwaresAtom.reportWrite(value, super.softwares, () {
      super.softwares = value;
    });
  }

  final _$softwaresActionAtom =
      Atom(name: '_HelpSoftwaresControllerBase.softwaresAction');

  @override
  List<SoftwaresPanelModel> get softwaresAction {
    _$softwaresActionAtom.reportRead();
    return super.softwaresAction;
  }

  @override
  set softwaresAction(List<SoftwaresPanelModel> value) {
    _$softwaresActionAtom.reportWrite(value, super.softwaresAction, () {
      super.softwaresAction = value;
    });
  }

  final _$getInformacaoSoftwaresAsyncAction =
      AsyncAction('_HelpSoftwaresControllerBase.getInformacaoSoftwares');

  @override
  Future<void> getInformacaoSoftwares() {
    return _$getInformacaoSoftwaresAsyncAction
        .run(() => super.getInformacaoSoftwares());
  }

  final _$_HelpSoftwaresControllerBaseActionController =
      ActionController(name: '_HelpSoftwaresControllerBase');

  @override
  void setSoftwaresAction() {
    final _$actionInfo = _$_HelpSoftwaresControllerBaseActionController
        .startAction(name: '_HelpSoftwaresControllerBase.setSoftwaresAction');
    try {
      return super.setSoftwaresAction();
    } finally {
      _$_HelpSoftwaresControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_HelpSoftwaresControllerBaseActionController
        .startAction(name: '_HelpSoftwaresControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_HelpSoftwaresControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
softwares: ${softwares},
softwaresAction: ${softwaresAction}
    ''';
  }
}
