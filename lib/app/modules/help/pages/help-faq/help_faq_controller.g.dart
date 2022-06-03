// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_faq_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HelpFaqController on _HelpFaqControllerBase, Store {
  final _$faqAtom = Atom(name: '_HelpFaqControllerBase.faq');

  @override
  List<FaqModel> get faq {
    _$faqAtom.reportRead();
    return super.faq;
  }

  @override
  set faq(List<FaqModel> value) {
    _$faqAtom.reportWrite(value, super.faq, () {
      super.faq = value;
    });
  }

  final _$faqActionAtom = Atom(name: '_HelpFaqControllerBase.faqAction');

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

  final _$getInformacaoFaqAsyncAction =
      AsyncAction('_HelpFaqControllerBase.getInformacaoFaq');

  @override
  Future<void> getInformacaoFaq() {
    return _$getInformacaoFaqAsyncAction.run(() => super.getInformacaoFaq());
  }

  final _$_HelpFaqControllerBaseActionController =
      ActionController(name: '_HelpFaqControllerBase');

  @override
  void setFaqAction() {
    final _$actionInfo = _$_HelpFaqControllerBaseActionController.startAction(
        name: '_HelpFaqControllerBase.setFaqAction');
    try {
      return super.setFaqAction();
    } finally {
      _$_HelpFaqControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void trocaOpen(int index) {
    final _$actionInfo = _$_HelpFaqControllerBaseActionController.startAction(
        name: '_HelpFaqControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_HelpFaqControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
faq: ${faq},
faqAction: ${faqAction}
    ''';
  }
}
