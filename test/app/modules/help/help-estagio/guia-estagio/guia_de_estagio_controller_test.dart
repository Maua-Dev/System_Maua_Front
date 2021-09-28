import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/guia_de_estagio_controller.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/models/guia_de_estagio_model.dart';
import 'package:system_maua_front/app/modules/help/pages/help-estagio/page/guia-de-estagio/repositories/guia_de_estagio_repository_interface.dart';

import 'guia_de_estagio_controller_test.mocks.dart';

@GenerateMocks([IGuiaEstagioRepository])
void main() {
  IGuiaEstagioRepository repository = MockIGuiaEstagioRepository();
  late GuiaEstagioController controller;
  var guiaEstagioTeste = [
    GuiaEstagioModel(
        nomePasso: '1° Passo: Curriculo',
        descricaoPasso:
            'Crie um curriculo em um word e crie um perfil no linkedin colocando suas informações academicas.'),
    GuiaEstagioModel(
        nomePasso: '2° Passo: Inscrição',
        descricaoPasso:
            'Mande seu curriculo para empresas e espere o retorno.'),
    GuiaEstagioModel(
        nomePasso: '3° Passo: Preparação',
        descricaoPasso:
            'Enquanto espera o retorno das empresas, estude os assuntos que a empresa acha desejáveis e diferenciávieis para ter resultados melhores.  '),
    GuiaEstagioModel(
        nomePasso: '4° Passo: Testes',
        descricaoPasso: 'Faça os Teste das empresas que retornaram.'),
  ];
  setUpAll(() {
    when(repository.getGuiaEstagio()).thenAnswer((_) async => guiaEstagioTeste);
    controller = GuiaEstagioController(repository);
  });

  test('[TEST] - getGuiaEstagio', () async {
    await controller.getGuiaEstagio();
    expect(controller.listaGuiaEstagio.isNotEmpty, true);
  });

  test('[TEST] - trocaOpen', () {
    controller.trocaOpen(0);
    expect(controller.listaPanelGuiaEstagio[0].isOpen, true);
  });

  test('[TEST] - getListaPanelGuiaEstagio', () async {
    controller.getListaPanelGuiaEstagio();
    expect(controller.listaPanelGuiaEstagio.isNotEmpty, true);
  });
}
