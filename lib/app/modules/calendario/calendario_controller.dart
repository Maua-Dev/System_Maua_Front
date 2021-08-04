import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/calendario/models/evento_model.dart';
import 'package:system_maua_front/app/modules/calendario/models/evento_panel_model.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository_interface.dart';

import 'enumerates/evento_enum.dart';
import 'widgets/event_map_widget.dart';

part 'calendario_controller.g.dart';

class CalendarioController = _CalendarioControllerBase
    with _$CalendarioController;

abstract class _CalendarioControllerBase with Store {
  final ICalendarioRepository repository;

  _CalendarioControllerBase(this.repository) {
    getAvaliacoes();
  }

  @observable
  List<EventoPanelModel> listEventoPanel = [];

  @observable
  EventList<Event> markedDateMap = EventList<Event>(
    events: {},
  );

  @observable
  List<EventoModel> avaliacoes = [];

  @observable
  DateTime selectedDateTime = DateTime(
      DateTime.now().year, DateTime.now().month, DateTime.now().day + 1);

  @action
  void setDate(DateTime date) {
    selectedDateTime = date;
  }

  @action
  void trocaOpen(int index) {
    var lista = List<EventoPanelModel>.from(listEventoPanel);
    lista[index].chageStateIsOpen();
    listEventoPanel = lista;
  }

  @action
  void setListaEventos() {
    var list = <EventoPanelModel>[];

    for (var i = 0; i < avaliacoes.length; i++) {
      if (avaliacoes[i].dateTime == selectedDateTime) {
        list.add(EventoPanelModel(evento: avaliacoes[i]));
      }
    }
    listEventoPanel = list;
  }

  @action
  void mapEvents() {
    var list = EventList<Event>(
      events: {},
    );
    for (var i = 0; i < avaliacoes.length; i++) {
      list.add(
        avaliacoes[i].dateTime!,
        Event(
          date: avaliacoes[i].dateTime!,
          title: avaliacoes[i].titulo,
          icon: EventMapWidget(
            corAtividade: avaliacoes[i].tipoEventoEnum.color,
            day: avaliacoes[i].dateTime!.day.toString(),
          ),
        ),
      );
    }
    markedDateMap = list;
  }

  @action
  Future<void> getAvaliacoes() async {
    avaliacoes = await repository.getAvaliacoes();
    mapEvents();
    setListaEventos();
  }
}
