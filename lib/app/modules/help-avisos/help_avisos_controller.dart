import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/help-avisos/models/avisos_model.dart';
import 'package:system_maua_front/app/modules/help-avisos/repositories/help_avisos_repository_interface.dart';

part 'help_avisos_controller.g.dart';

class HelpAvisosController = _HelpAvisosControllerBase
    with _$HelpAvisosController;

abstract class _HelpAvisosControllerBase with Store {
  final IHelpAvisosRepository repository;

  _HelpAvisosControllerBase(this.repository) {
    getInformacaoAvisos();
  }

  @observable
  List<AvisosModel> avisos = [];

  @action
  Future<void> getInformacaoAvisos() async {
    avisos = await repository.getInformacaoAvisos();
  }
}
