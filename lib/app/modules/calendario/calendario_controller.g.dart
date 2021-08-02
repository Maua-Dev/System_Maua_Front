// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendario_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalendarioController on _CalendarioControllerBase, Store {
  final _$markedDateMapAtom =
      Atom(name: '_CalendarioControllerBase.markedDateMap');

  @override
  EventList<Event> get markedDateMap {
    _$markedDateMapAtom.reportRead();
    return super.markedDateMap;
  }

  @override
  set markedDateMap(EventList<Event> value) {
    _$markedDateMapAtom.reportWrite(value, super.markedDateMap, () {
      super.markedDateMap = value;
    });
  }

  final _$avaliacoesAtom = Atom(name: '_CalendarioControllerBase.avaliacoes');

  @override
  List<EventoModel> get avaliacoes {
    _$avaliacoesAtom.reportRead();
    return super.avaliacoes;
  }

  @override
  set avaliacoes(List<EventoModel> value) {
    _$avaliacoesAtom.reportWrite(value, super.avaliacoes, () {
      super.avaliacoes = value;
    });
  }

  final _$listaEventosAtom =
      Atom(name: '_CalendarioControllerBase.listaEventos');

  @override
  List<EventoModel> get listaEventos {
    _$listaEventosAtom.reportRead();
    return super.listaEventos;
  }

  @override
  set listaEventos(List<EventoModel> value) {
    _$listaEventosAtom.reportWrite(value, super.listaEventos, () {
      super.listaEventos = value;
    });
  }

  final _$isOpenAtom = Atom(name: '_CalendarioControllerBase.isOpen');

  @override
  bool get isOpen {
    _$isOpenAtom.reportRead();
    return super.isOpen;
  }

  @override
  set isOpen(bool value) {
    _$isOpenAtom.reportWrite(value, super.isOpen, () {
      super.isOpen = value;
    });
  }

  final _$selectedDateTimeAtom =
      Atom(name: '_CalendarioControllerBase.selectedDateTime');

  @override
  DateTime get selectedDateTime {
    _$selectedDateTimeAtom.reportRead();
    return super.selectedDateTime;
  }

  @override
  set selectedDateTime(DateTime value) {
    _$selectedDateTimeAtom.reportWrite(value, super.selectedDateTime, () {
      super.selectedDateTime = value;
    });
  }

  final _$trocaOpenAsyncAction =
      AsyncAction('_CalendarioControllerBase.trocaOpen');

  @override
  Future<void> trocaOpen() {
    return _$trocaOpenAsyncAction.run(() => super.trocaOpen());
  }

  final _$getAvaliacoesAsyncAction =
      AsyncAction('_CalendarioControllerBase.getAvaliacoes');

  @override
  Future<void> getAvaliacoes() {
    return _$getAvaliacoesAsyncAction.run(() => super.getAvaliacoes());
  }

  final _$_CalendarioControllerBaseActionController =
      ActionController(name: '_CalendarioControllerBase');

  @override
  void setDate(DateTime date) {
    final _$actionInfo = _$_CalendarioControllerBaseActionController
        .startAction(name: '_CalendarioControllerBase.setDate');
    try {
      return super.setDate(date);
    } finally {
      _$_CalendarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListaEventos(DateTime date) {
    final _$actionInfo = _$_CalendarioControllerBaseActionController
        .startAction(name: '_CalendarioControllerBase.setListaEventos');
    try {
      return super.setListaEventos(date);
    } finally {
      _$_CalendarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void mapEvents() {
    final _$actionInfo = _$_CalendarioControllerBaseActionController
        .startAction(name: '_CalendarioControllerBase.mapEvents');
    try {
      return super.mapEvents();
    } finally {
      _$_CalendarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
markedDateMap: ${markedDateMap},
avaliacoes: ${avaliacoes},
listaEventos: ${listaEventos},
isOpen: ${isOpen},
selectedDateTime: ${selectedDateTime}
    ''';
  }
}
