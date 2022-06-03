// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'faq_intercambio_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$FaqIntercambioController on _FaqIntercambioControllerBase, Store {
  final _$listaFaqAtom = Atom(name: '_FaqIntercambioControllerBase.listaFaq');

  @override
  List<FaqModel> get listaFaq {
    _$listaFaqAtom.reportRead();
    return super.listaFaq;
  }

  @override
  set listaFaq(List<FaqModel> value) {
    _$listaFaqAtom.reportWrite(value, super.listaFaq, () {
      super.listaFaq = value;
    });
  }

  final _$faqActionAtom = Atom(name: '_FaqIntercambioControllerBase.faqAction');

  @override
  List<FaqPanelModel> get faqAction {
    _$faqActionAtom.reportRead();
    return super.faqAction;
  }

  @override
  set faqAction(List<FaqPanelModel> value) {
    _$faqActionAtom.reportWrite(value, super.faqAction, () {
      super.faqAction = value;
    });
  }

  final _$getListRepositoryAsyncAction =
      AsyncAction('_FaqIntercambioControllerBase.getListRepository');

  @override
  Future<void> getListRepository() {
    return _$getListRepositoryAsyncAction.run(() => super.getListRepository());
  }

  final _$_FaqIntercambioControllerBaseActionController =
      ActionController(name: '_FaqIntercambioControllerBase');

  @override
  void setFaqAction() {
    final _$actionInfo = _$_FaqIntercambioControllerBaseActionController
        .startAction(name: '_FaqIntercambioControllerBase.setFaqAction');
    try {
      return super.setFaqAction();
    } finally {
      _$_FaqIntercambioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_FaqIntercambioControllerBaseActionController
        .startAction(name: '_FaqIntercambioControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_FaqIntercambioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaFaq: ${listaFaq},
faqAction: ${faqAction}
    ''';
  }
}
