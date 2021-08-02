import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/calendario/models/avaliacao_model.dart';
import 'package:system_maua_front/app/modules/calendario/repositories/calendario_repository_interface.dart';

part 'calendario_controller.g.dart';

class CalendarioController = _CalendarioControllerBase
    with _$CalendarioController;

abstract class _CalendarioControllerBase with Store {
  final ICalendarioRepository repository;

  _CalendarioControllerBase(this.repository);

  @observable
  List<AvaliacaoModel> avaliacoes = [];

  @action
  Future<void> getAvaliacoes() async {
    avaliacoes = await repository.getAvaliacoes();
  }
}
