import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/enumerates/materiais_enum.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/mural_vendas_materiais/pages/procura_materias/procura_materiais_controller.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/type_ahead_field/type_ahead_field_widget.dart';

class ProcuraMateriaisPage extends StatefulWidget {
  ProcuraMateriaisPage({Key? key}) : super(key: key);

  @override
  _ProcuraMateriaisPageState createState() => _ProcuraMateriaisPageState();
}

class _ProcuraMateriaisPageState
    extends ModularState<ProcuraMateriaisPage, ProcuraMateriaisController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Venda Materiais',
        icon: FontAwesome5.shopping_bag,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
            child: TypeAheadFieldWidget(
              list: controller.nomesMateriais,
              titulo: 'Procurar material',
              onChanged: controller.setMaterial,
              value: controller.material,
              onSuggestionSelected: () {},
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: MateriaisEnum.values.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: TextButton(
                    onPressed: () {
                      Modular.to.pushNamed(
                          '/mural/venda-materiais/lista-vendas',
                          arguments: controller.listaMateriais[index]);
                    },
                    child: Text(
                      MateriaisEnum.values[index].nome,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
