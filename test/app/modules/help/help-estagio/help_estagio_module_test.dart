import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/help_estagio_module.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/guia_de_estagio_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/repositories/guia_de_estagio_repository.dart';


void main() {
  initModule(HelpEstagioModule());

  test('[TEST] - Injeção do GuiaEstagioController', () {
    var guiaEstagioController = Modular.get<GuiaEstagioController>();
    expect(
        guiaEstagioController.repository, isInstanceOf<GuiaEstagioRepository>());
  });

  test('[TEST] - Injeção do GuiaEstagioRepository', () {
    Modular.get<GuiaEstagioRepository>();
  });
}