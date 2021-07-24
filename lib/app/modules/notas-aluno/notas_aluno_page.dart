import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/notas-aluno/notas_aluno_controller.dart';
import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/bottom_navigation_bar_controller.dart';
import 'package:system_maua_front/app/shared/components/bottom_navigation_bar/widgets/bottom_navigation_bar_widget.dart';
import 'package:system_maua_front/app/shared/components/floating_action_button_custom/floating_action_button_custom_widget.dart';
import 'package:system_maua_front/app/shared/components/notas_card/notas_card_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class NotasAlunoPage extends StatefulWidget {
  const NotasAlunoPage({Key? key}) : super(key: key);
  @override
  NotasAlunoPageState createState() => NotasAlunoPageState();
}

class NotasAlunoPageState
    extends ModularState<NotasAlunoPage, NotasAlunoController> {
  var controllerNavigationBar = Modular.get<BottomNavigationBarController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: Text('Notas'),
          iconBar: Icon(Icons.playlist_add_check_outlined),
          leadingWidget: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
          actionWidget: Icon(Icons.menu_sharp),
        ),
        bottomNavigationBar: Observer(builder: (_) {
          return BottomNavigationBarWidget(
            isOpen: controllerNavigationBar.isOpen,
          );
        }),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButtonCustomWidget(
          key: ValueKey('actionButton'),
          onPressed: () {
            controllerNavigationBar.trocaOpen();
          },
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.9,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 32),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Expanded(
                                child: Center(
                                  child: Container(
                                    padding: EdgeInsets.only(
                                        right: 16.0, left: 16, top: 8),
                                    child: Text(
                                      controller.materia.nome,
                                      style: AppTextStyles.bodyBold,
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Divider(color: Colors.grey),
                            Container(
                              padding: EdgeInsets.only(bottom: 8.0),
                              child: Text('Nota parcial: ' +
                                  controller.materia.notaParcial
                                      .toStringAsFixed(1)
                                      .replaceAll('.', ',')),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Container(
                                    child: Text(
                                      'Provas',
                                      style: AppTextStyles.bodyBold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    height: MediaQuery.of(context).size.height *
                                        0.254,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: ListView(
                                            children: [
                                              Row(
                                                children: [
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      NotasCardWidget(
                                                        tituloAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[0]
                                                                .avaliacao,
                                                        notaAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[0]
                                                                .value,
                                                      ),
                                                      NotasCardWidget(
                                                        tituloAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[1]
                                                                .avaliacao,
                                                        notaAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[1]
                                                                .value,
                                                      ),
                                                      NotasCardWidget(
                                                        tituloAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[2]
                                                                .avaliacao,
                                                        notaAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[2]
                                                                .value,
                                                      ),
                                                    ],
                                                  ),
                                                  Spacer(),
                                                  Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      NotasCardWidget(
                                                        tituloAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[3]
                                                                .avaliacao,
                                                        notaAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[3]
                                                                .value,
                                                      ),
                                                      NotasCardWidget(
                                                        tituloAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[4]
                                                                .avaliacao,
                                                        notaAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[4]
                                                                .value,
                                                      ),
                                                      NotasCardWidget(
                                                        tituloAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[5]
                                                                .avaliacao,
                                                        notaAvaliacao:
                                                            controller
                                                                .materia
                                                                .provas[5]
                                                                .value,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 8, bottom: 16),
                                  child: Container(
                                    child: Text(
                                      'Trabalhos',
                                      style: AppTextStyles.bodyBold,
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    height: MediaQuery.of(context).size.height *
                                        0.254,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: ListView.builder(
                                              itemCount: (controller.materia
                                                          .trabalhos.length /
                                                      2)
                                                  .round(),
                                              itemBuilder: (context, index) =>
                                                  Row(
                                                    children: [
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          NotasCardWidget(
                                                            tituloAvaliacao: controller
                                                                .materia
                                                                .trabalhos[controller
                                                                    .returnIndex(
                                                                        index)]
                                                                .avaliacao,
                                                            notaAvaliacao: controller
                                                                .materia
                                                                .trabalhos[controller
                                                                    .returnIndex(
                                                                        index)]
                                                                .value,
                                                          ),
                                                        ],
                                                      ),
                                                      Spacer(),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          NotasCardWidget(
                                                            tituloAvaliacao: controller
                                                                .materia
                                                                .trabalhos[controller
                                                                    .returnIndexIncremento(
                                                                        index)]
                                                                .avaliacao,
                                                            notaAvaliacao: controller
                                                                .materia
                                                                .trabalhos[controller
                                                                    .returnIndexIncremento(
                                                                        index)]
                                                                .value,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    ),
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
