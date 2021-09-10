import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/mural_vendas_materiais_controller.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/widgets/vendas_materiais_card_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';

class MuralVendasMateriaisPage extends StatefulWidget {
  MuralVendasMateriaisPage({Key? key}) : super(key: key);

  @override
  _MuralVendasMateriaisPageState createState() =>
      _MuralVendasMateriaisPageState();
}

class _MuralVendasMateriaisPageState extends ModularState<
    MuralVendasMateriaisPage, MuralVendasMateriaisController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Venda de materiais', 
        icon: Icons.card_travel,
        actionWidget: Icon(Icons.add,),
        ),
      body: Column(
        children: [
          Expanded(
            child: Observer(builder: (_) {
              return ListView.builder(
                itemCount: controller.listaPanelVendas.length,
                itemBuilder: (context, index) => VendasCardWidget(
                  produto: controller.listaPanelVendas[index].model.nomeProduto,
                  preco: controller.listaPanelVendas[index].model.precoProduto,
                  onTap: () {
                    null;
                  },
                ), 
              );
            }),
          ),
        ],
      ),
    );
  }
}
