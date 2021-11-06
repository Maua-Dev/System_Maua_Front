import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/notas/pages/medias/widgets/todos_filtros/todos_filtros_widget.dart';
import 'package:system_maua_front/app/shared/components/app_bar/app_bar_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';
import 'medias_controller.dart';

class MediasPage extends StatefulWidget {
  const MediasPage({Key? key}) : super(key: key);

  @override
  _MediasPageState createState() => _MediasPageState();
}

class _MediasPageState extends ModularState<MediasPage, MediasController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          title: 'Médias',
          icon: Icons.fact_check,
          actionWidget: Container(
            child: IconButton(
              onPressed: () {
                controller.abreFiltros();
              },
              icon: Observer(builder: (_) {
                return Icon(
                  controller.filtrosAbertos
                      ? Icons.filter_alt
                      : Icons.filter_alt_outlined,
                );
              }),
            ),
          ),
        ),
        body: Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
          child: Container(
              child: Column(
            children: [
              Container(
                child: Observer(builder: (_) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Text(
                              'Engenharia de Computação',
                              style:
                                  AppTextStyles.bodyBold.copyWith(fontSize: 25),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'Coeficiente de Rendimento',
                              style: AppTextStyles.lightBody.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '8.7',
                              style: AppTextStyles.body.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                      controller.filtrosAbertos
                          ? TodosFiltrosWidget(
                              anos: controller.filtros.anos,
                              primeiroSem: controller.filtros.primeiroSem,
                              segundoSem: controller.filtros.segundoSem,
                              provas: controller.filtros.provas,
                              trabalhos: controller.filtros.trabalhos,
                            )
                          : Container()
                    ],
                  );
                }),
              ),
              Expanded(
                child: Observer(
                  builder: (_) {
                    return ListView.separated(
                      itemCount: controller.medias.medias.length,
                      itemBuilder: (_, index) {
                        return InkWell(
                          onTap: () => {Modular.to.pushNamed('/medias/notas')},
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  controller.medias.medias[index].materia,
                                  style: AppTextStyles.body.copyWith(
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  '${controller.medias.medias[index].media ?? '-'}',
                                  style: AppTextStyles.lightBody.copyWith(
                                    color:
                                        controller.medias.medias[index].media !=
                                                null
                                            ? controller.medias.medias[index]
                                                        .media! >=
                                                    controller.mediaMaua
                                                ? AppColors.thinLetter
                                                : AppColors.red
                                            : AppColors.thinLetter,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 1.5,
                          color: AppColors.stroke,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
