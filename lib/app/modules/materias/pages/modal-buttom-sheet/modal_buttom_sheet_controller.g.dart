// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal_buttom_sheet_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ModalButtomController on ModalButtomControllerBase, Store {
  final _$materiaAtom = Atom(name: 'ModalButtomControllerBase.materia');

  @override
  MateriasModel get materia {
    _$materiaAtom.reportRead();
    return super.materia;
  }

  @override
  set materia(MateriasModel value) {
    _$materiaAtom.reportWrite(value, super.materia, () {
      super.materia = value;
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

  final _$onAulaSelecionadaAsyncAction =
      AsyncAction('ModalButtomControllerBase.onAulaSelecionada');

  @override
  Future<void> onAulaSelecionada(int value) {
    return _$onAulaSelecionadaAsyncAction
        .run(() => super.onAulaSelecionada(value));
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
materia: ${materia},
valorDigitado: ${valorDigitado}
    ''';
  }
}
