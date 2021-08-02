import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart';
import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/calendario/models/avaliacao_model.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository_interface.dart';
import 'package:system_maua_front/app/modules/calendario/widgets/event_map_widget.dart';

part 'calendario_controller.g.dart';

class CalendarioController = _CalendarioControllerBase
    with _$CalendarioController;

abstract class _CalendarioControllerBase with Store {
  final ICalendarioRepository repository;

  _CalendarioControllerBase(this.repository) {
    getAvaliacoes();
  }

  @observable
  EventList<Event> markedDateMap = EventList<Event>(
    events: {},
  );

  @observable
  List<AvaliacaoModel> avaliacoes = [];

  @observable
  List<AvaliacaoModel> listaEventos = [];

  @action
  void setListaEventos(DateTime date) {
    listaEventos.clear();
    for (var i = 0; i < avaliacoes.length; i++) {
      if (avaliacoes[i].dateTime == date) {
        listaEventos.add(avaliacoes[i]);
      }
    }
  }

  @action
  void mapEvents() {
    for (var i = 0; i < avaliacoes.length; i++) {
      markedDateMap.add(
        avaliacoes[i].dateTime!,
        Event(
            date: avaliacoes[i].dateTime!,
            title: avaliacoes[i].titulo,
            icon: EventMapWidget(
              day: avaliacoes[i].dateTime!.day.toString(),
            )),
      );
    }
  }

  @action
  Future<void> getAvaliacoes() async {
    avaliacoes = await repository.getAvaliacoes();
    mapEvents();
  }
}
