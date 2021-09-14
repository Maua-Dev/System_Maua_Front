import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/venda_materiais/enumerates/materiais_enum.dart';
import 'package:system_maua_front/app/modules/mural-divulgacao/pages/venda_materiais/pages/procura_materias/procura_materiais_controller.dart';
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            TypeAheadFieldWidget(
              list: controller.listaMateriais,
              titulo: 'Procurar material',
              onChanged: controller.setMaterial,
              value: controller.material,
              onSuggestionSelected: () {},
            ),
            SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: MateriaisEnum.values.length,
                itemBuilder: (context, index) => TextButton(
                    onPressed: () {},
                    child: Text(MateriaisEnum.values[index].nome)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
