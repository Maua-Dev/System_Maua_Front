import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/widgets/grid_avaliacao_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import 'atingir_metas_controller.dart';

class AtingirMetasPage extends StatefulWidget {
  const AtingirMetasPage({Key? key}) : super(key: key);
  @override
  AtingirMetasPageState createState() => AtingirMetasPageState();
}

class AtingirMetasPageState
    extends ModularState<AtingirMetasPage, AtingirMetasController> {
  // var controllerNavigationBar = Modular.get<BottomNavigationBarController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
            title: 'Atingir Metas', icon: Icons.my_location_outlined),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              TextButton(
                                onPressed: controller.getNotasCalculadas,
                                child: Text(
                                  'Calcular',
                                  style: AppTextStyles.appBarTitle
                                      .copyWith(color: AppColors.darkBlue),
                                ),
                              ),
                              IconButton(
                                onPressed: controller.getNotasCalculadas,
                                icon: Icon(Icons.my_location_outlined),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              TextButton(
                                onPressed: controller.getMateria,
                                child: Text(
                                  'Limpar',
                                  style: AppTextStyles.appBarTitle
                                      .copyWith(color: AppColors.darkBlue),
                                ),
                              ),
                              IconButton(
                                onPressed: controller.getMateria,
                                icon: Icon(Icons.delete),
                                tooltip: 'aaaa',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 2.0, color: AppColors.stroke),
                                ),
                              ),
                              child: Observer(builder: (_) {
                                return Container(
                                  padding: EdgeInsets.only(
                                      right: 16.0, left: 16, top: 8),
                                  child: Text(
                                    controller.materia.nome,
                                    style: AppTextStyles.bodyBold,
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              }),
                            ),
                          ),
                          Observer(builder: (_) {
                            return Container(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text(controller.notaComputada),
                            );
                          })
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Container(
                                child: Text(
                                  'Provas',
                                  style: AppTextStyles.bodyBold,
                                ),
                              ),
                            ),
                            Observer(builder: (_) {
                              return GridAvaliacao(
                                  setNota: controller.setNota,
                                  listaNotas: controller.materia.provas);
                            })
                          ],
                        )),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8, bottom: 8),
                              child: Container(
                                child: Text(
                                  'Trabalhos',
                                  style: AppTextStyles.bodyBold,
                                ),
                              ),
                            ),
                            Observer(builder: (_) {
                              return GridAvaliacao(
                                  setNota: controller.setNota,
                                  listaNotas: controller.materia.trabalhos);
                            })
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
