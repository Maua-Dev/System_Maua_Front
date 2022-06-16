import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/modules/notas/pages/notas-aluno/widgets/grid_avaliacao_widget.dart';
import 'package:system_maua_front/app/modules/notas/pages/notas-aluno/widgets/row_navegacao_notas_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

import '../../../../injection_container.dart';
import 'notas_aluno_controller.dart';

class NotasAlunoPage extends StatefulWidget {
  const NotasAlunoPage({Key? key, nomeMateria}) : super(key: key);
  @override
  NotasAlunoPageState createState() => NotasAlunoPageState();
}

class NotasAlunoPageState extends State<NotasAlunoPage> {
  @override
  Widget build(BuildContext context) {
    var controller = serviceLocator<NotasAlunoController>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Notas',
          icon: Icons.playlist_add_check_outlined,
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 32),
                child: Column(
                  children: [
                    RowNavegacaoNotasWidget(
                      nomeMateria: 'dado',
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
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
                                  style: AppTextStyles.bodyBoldH4,
                                ),
                              ),
                            ),
                            Observer(builder: (_) {
                              return GridAvaliacao(
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
