// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calendario_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalendarioController on _CalendarioControllerBase, Store {
  final _$listEventoPanelAtom =
      Atom(name: '_CalendarioControllerBase.listEventoPanel');

  @override
  List<EventoPanelModel> get listEventoPanel {
    _$listEventoPanelAtom.reportRead();
    return super.listEventoPanel;
  }

  @override
  set listEventoPanel(List<EventoPanelModel> value) {
    _$listEventoPanelAtom.reportWrite(value, super.listEventoPanel, () {
      super.listEventoPanel = value;
    });
  }

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
  void trocaOpen(int index) {
    final _$actionInfo = _$_CalendarioControllerBaseActionController
        .startAction(name: '_CalendarioControllerBase.trocaOpen');
    try {
      return super.trocaOpen(index);
    } finally {
      _$_CalendarioControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setListaEventos() {
    final _$actionInfo = _$_CalendarioControllerBaseActionController
        .startAction(name: '_CalendarioControllerBase.setListaEventos');
    try {
      return super.setListaEventos();
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
listEventoPanel: ${listEventoPanel},
markedDateMap: ${markedDateMap},
avaliacoes: ${avaliacoes},
selectedDateTime: ${selectedDateTime}
    ''';
  }
}
