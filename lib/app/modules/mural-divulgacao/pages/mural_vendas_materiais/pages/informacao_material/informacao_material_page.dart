import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/informacao_material/informacao_material_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/informacao_material/widgets/texto_custom_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class InformacaoMaterialPage extends StatefulWidget {
  InformacaoMaterialPage({Key? key}) : super(key: key);

  @override
  _InformacaoMaterialPageState createState() => _InformacaoMaterialPageState();
}

class _InformacaoMaterialPageState
    extends ModularState<InformacaoMaterialPage, InformacaoMaterialController> {
  @override
  Widget build(BuildContext context) {
    var rotaController = controller.material;
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Venda de Materiais',
        icon: Icons.card_travel,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              rotaController.imagemMaterial == null
                  ? SizedBox.shrink()
                  : Container(
                      height: MediaQuery.of(context).size.height * 0.37,
                      width: MediaQuery.of(context).size.height * 0.37,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(rotaController.imagemMaterial!),
                          ))),
              TextoCustomWidget(texto: rotaController.nomeMaterial),
              TextoCustomWidget(texto: rotaController.custoMaterial),
              TextoCustomWidget(
                  texto: rotaController.descricaoMaterial,
                  corTexto: AppColors.lightLetter,
                  fontsize: 16),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Icon(
                      Icons.phone_android,
                      color: Colors.black,
                    ),
                  ),
                  TextoCustomWidget(
                      texto: rotaController.contatoVendedorMaterial),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                  TextoCustomWidget(texto: rotaController.nomeVendedorMaterial),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
