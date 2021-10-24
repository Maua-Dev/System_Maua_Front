import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/notas/pages/atividades/models/atividade_model.dart';
import 'package:system_maua_front/app/modules/notas/pages/atividades/repositories/atividades_repository_interface.dart';

part 'atividades_controller.g.dart';

class AtividadesController = AtividadesControllerBase
    with _$AtividadesController;

abstract class AtividadesControllerBase with Store {
  final IAtividadesRepository atividadesRepository;

  AtividadesControllerBase(this.atividadesRepository) {
    getAtividades();
  }

  @computed
  int get mediaMaua => 6;

  @observable
  List<AtividadeModel> atividades = [AtividadeModel.newInstance()];

  @action
  Future<void> getAtividades() async {
    atividades = await atividadesRepository.getAtividades();
  }
}
