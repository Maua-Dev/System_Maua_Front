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
    getMediaDeAtividades();
  }

  @computed
  int get mediaMaua => 6;

  @computed
  String get mediaDeAtividades =>
      mediaDeAtividadesDouble.toStringAsFixed(1).replaceAll('.', ',');

  @observable
  List<AtividadeModel> atividades = [AtividadeModel.newInstance()];

  @observable
  double mediaDeAtividadesDouble = 0;

  @action
  Future<void> getAtividades() async {
    atividades = await atividadesRepository.getAtividades();
  }

  @action
  Future<void> getMediaDeAtividades() async {
    mediaDeAtividadesDouble = await atividadesRepository.getMediaDeAtividades();
  }
}
