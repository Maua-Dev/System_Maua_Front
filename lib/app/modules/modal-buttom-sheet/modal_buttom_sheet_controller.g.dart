// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal_buttom_sheet_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ModalButtomController on ModalButtomControllerBase, Store {
  final _$listaAulasNomeAtom =
      Atom(name: 'ModalButtomControllerBase.listaAulasNome');

  @override
  List<MateriasAulasModel> get listaAulasNome {
    _$listaAulasNomeAtom.reportRead();
    return super.listaAulasNome;
  }

  @override
  set listaAulasNome(List<MateriasAulasModel> value) {
    _$listaAulasNomeAtom.reportWrite(value, super.listaAulasNome, () {
      super.listaAulasNome = value;
    });
  }

  final _$valorDigitadoAtom =
      Atom(name: 'ModalButtomControllerBase.valorDigitado');

  @override
  String get valorDigitado {
    _$valorDigitadoAtom.reportRead();
    return super.valorDigitado;
  }

  @override
  set valorDigitado(String value) {
    _$valorDigitadoAtom.reportWrite(value, super.valorDigitado, () {
      super.valorDigitado = value;
    });
  }

  final _$getListaAulasAsyncAction =
      AsyncAction('ModalButtomControllerBase.getListaAulas');

  @override
  Future<void> getListaAulas() {
    return _$getListaAulasAsyncAction.run(() => super.getListaAulas());
  }

  final _$onSuggestionSelectedAsyncAction =
      AsyncAction('ModalButtomControllerBase.onSuggestionSelected');

  @override
  Future<void> onSuggestionSelected(int value) {
    return _$onSuggestionSelectedAsyncAction
        .run(() => super.onSuggestionSelected(value));
  }

  final _$ModalButtomControllerBaseActionController =
      ActionController(name: 'ModalButtomControllerBase');

  @override
  void onChangedValorDigitado(String value) {
    final _$actionInfo = _$ModalButtomControllerBaseActionController
        .startAction(name: 'ModalButtomControllerBase.onChangedValorDigitado');
    try {
      return super.onChangedValorDigitado(value);
    } finally {
      _$ModalButtomControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaAulasNome: ${listaAulasNome},
valorDigitado: ${valorDigitado}
    ''';
  }
}
