import 'package:mobx/mobx.dart';
import 'package:system_maua_front/app/modules/ic/repositories/ic_repository_interface.dart';

part 'ic_descricao_controller.g.dart';

class IcDescricaoController = IcDescricaoControllerBase
    with _$IcDescricaoController;

abstract class IcDescricaoControllerBase with Store {
  final IIcRepository repository;

  IcDescricaoControllerBase({required this.repository});
}
