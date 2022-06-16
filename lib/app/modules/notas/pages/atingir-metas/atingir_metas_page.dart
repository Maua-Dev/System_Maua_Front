import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/notas/pages/atingir-metas/widgets/grid_avaliacao_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import '../../../../injection_container.dart';
import 'atingir_metas_controller.dart';

class AtingirMetasPage extends StatefulWidget {
  const AtingirMetasPage({Key? key, nomeMateria}) : super(key: key);
  @override
  AtingirMetasPageState createState() => AtingirMetasPageState();
}

class AtingirMetasPageState extends State<AtingirMetasPage> {
  @override
  Widget build(BuildContext context) {
    var controller = serviceLocator<AtingirMetasController>();

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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: controller.getNotasCalculadas,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.37,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Calcular',
                                        style: AppTextStyles.titleH2.copyWith(
                                            color: AppColors.brandingBlue),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.my_location_outlined,
                                        color: AppColors.brandingBlue,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Material(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                            child: InkWell(
                              onTap: controller.getMateria,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.37,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Editar',
                                        style: AppTextStyles.titleH2.copyWith(
                                            color: AppColors.brandingBlue),
                                      ),
                                      SizedBox(width: 5),
                                      Icon(
                                        Icons.edit,
                                        color: AppColors.brandingBlue,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
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
                                      width: 2.0, color: AppColors.shape),
                                ),
                              ),
                              child: Observer(builder: (_) {
                                return Container(
                                  padding: EdgeInsets.only(
                                      right: 16.0, left: 16, top: 8),
                                  child: Text(
                                    'dado',
                                    style: AppTextStyles.bodyBoldH4,
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
                                  style: AppTextStyles.bodyBoldH4,
                                ),
                              ),
                            ),
                            Observer(builder: (_) {
                              return GridAvaliacao(
                                setNota: controller.setNota,
                                listaNotas: controller.materia.provas,
                              );
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
                                  style: AppTextStyles.bodyBoldH4,
                                ),
                              ),
                            ),
                            Observer(builder: (_) {
                              return GridAvaliacao(
                                setNota: controller.setNota,
                                listaNotas: controller.materia.trabalhos,
                              );
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
