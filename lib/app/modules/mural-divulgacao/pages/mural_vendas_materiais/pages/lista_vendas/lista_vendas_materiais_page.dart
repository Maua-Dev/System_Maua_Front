import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/lista_vendas/lista_vendas_materiais_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/lista_vendas/widgets/vendas_materiais_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class ListaVendasMateriaisPage extends StatefulWidget {
  ListaVendasMateriaisPage({Key? key}) : super(key: key);

  @override
  _ListaVendasMateriaisPageState createState() =>
      _ListaVendasMateriaisPageState();
}

class _ListaVendasMateriaisPageState extends ModularState<
    ListaVendasMateriaisPage, ListaVendasMateriaisController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Venda de materiais',
        icon: Icons.card_travel,
      ),
      body: Column(
        children: [
          Expanded(
            child: Observer(builder: (_) {
              return ListView.builder(
                  itemCount: controller.listaVendas.length,
                  itemBuilder: (context, index) {
                    var abreviacao = controller.listaVendas[index];
                    return VendasCardWidget(
                        produto: abreviacao.nomeMaterial,
                        preco: abreviacao.custoMaterial,
                        imagemMaterial: abreviacao.imagemMaterial,
                        onTap: () {
                          controller.navigateTo(controller.listaVendas[index]);
                        });
                  });
            }),
          ),
        ],
      ),
    );
  }
}
