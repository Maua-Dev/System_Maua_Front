import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:system_maua_front/app/modules/medias/widgets/filtro_ano/filtro_ano_widget.dart';
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
            title: 'Notas',
            leadingWidget: BackButton(
              onPressed: () {
                Modular.to.navigate('/home');
              },
            ),
            icon: Icons.fact_check),
        body: Container(
          child: Column(
            children: [
              Center(child: FiltroAnoWidget()),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Engenharia de Computação',
                        style: AppTextStyles.bodyBold.copyWith(fontSize: 22),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 3, color: AppColors.stroke),
                          // border: Border(
                          //   top: BorderSide(
                          //     width: 3.0,
                          //     color: AppColors.stroke,
                          //   ),
                          //   left: BorderSide(
                          //     width: 3.0,
                          //     color: AppColors.stroke,
                          //   ),
                          //   right: BorderSide(
                          //     width: 3.0,
                          //     color: AppColors.stroke,
                          //   ),
                          // ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 4.0),
                              child: Text.rich(TextSpan(
                                  text: 'Coeficiente de Rendimento',
                                  style: AppTextStyles.bodyBold,
                                  children: [
                                    TextSpan(
                                      text: ' 8.7',
                                      style: AppTextStyles.body,
                                    )
                                  ])),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                child: Container(
                                  height: 450,
                                  decoration: BoxDecoration(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Expanded(
                                    child: Observer(
                                      builder: (_) {
                                        return ListView.separated(
                                          itemCount: controller
                                              .todasMedias[0].medias.length,
                                          itemBuilder: (_, index) {
                                            return Padding(
                                              padding:
                                                  const EdgeInsets.all(15.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  // Text(
                                                  //   controller.todasMedias[0]
                                                  //       .medias[index].materia,
                                                  //   style: AppTextStyles
                                                  //       .lightBody
                                                  //       .copyWith(fontSize: 15),
                                                  // ),
                                                  // controller
                                                  //             .todasMedias[0]
                                                  //             .medias[index]
                                                  //             .media ==
                                                  //         null
                                                  //     ? Text('-')
                                                  //     : controller
                                                  //                 .todasMedias[
                                                  //                     0]
                                                  //                 .medias[index]
                                                  //                 .media! >=
                                                  //             6
                                                  //         ? Text(
                                                  //             '${controller.todasMedias[0].medias[index].media}',
                                                  //           )
                                                  //         : Text(
                                                  //             '${controller.todasMedias[0].medias[index].media}',
                                                  //             style: AppTextStyles
                                                  //                 .lightBody
                                                  //                 .copyWith(
                                                  //                     color: AppColors
                                                  //                         .red),
                                                  //           )

                                                  // Text(
                                                  //   controller.todasMedias[0]
                                                  //       .medias[index].materia,
                                                  //   style: AppTextStyles
                                                  //       .lightBody
                                                  //       .copyWith(fontSize: 15),
                                                  // ),
                                                  // controller
                                                  //             .todasMedias[0]
                                                  //             .medias[index]
                                                  //             .media ==
                                                  //         null
                                                  //     ? Text('-')
                                                  //     : Text(
                                                  //         '${controller.todasMedias[0].medias[index].media}',
                                                  //         style: AppTextStyles.lightBody.copyWith(
                                                  //             color: controller
                                                  //                         .todasMedias[
                                                  //                             0]
                                                  //                         .medias[
                                                  //                             index]
                                                  //                         .media! >=
                                                  //                     6
                                                  //                 ? AppColors
                                                  //                     .thinLetter
                                                  //                 : AppColors
                                                  //                     .red),
                                                  //       )

                                                  Text(
                                                    controller.todasMedias[0]
                                                        .medias[index].materia,
                                                    style: AppTextStyles
                                                        .lightBody
                                                        .copyWith(fontSize: 15),
                                                  ),

                                                  Text(
                                                    '${controller.todasMedias[0].medias[index].media ?? '-'}',
                                                    style: AppTextStyles
                                                        .lightBody
                                                        .copyWith(
                                                            color: controller
                                                                        .todasMedias[
                                                                            0]
                                                                        .medias[
                                                                            index]
                                                                        .media !=
                                                                    null
                                                                ? controller
                                                                            .todasMedias[
                                                                                0]
                                                                            .medias[
                                                                                index]
                                                                            .media! >=
                                                                        6
                                                                    ? AppColors
                                                                        .thinLetter
                                                                    : AppColors
                                                                        .red
                                                                : AppColors
                                                                    .thinLetter),
                                                  )
                                                ],
                                              ),
                                            );
                                          },
                                          separatorBuilder:
                                              (BuildContext context,
                                                  int index) {
                                            return Container(
                                              child: Divider(
                                                color: AppColors.stroke,
                                              ),
                                            );
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Expanded(
              //   child: Observer(
              //     builder: (_) {
              //       return ListView.separated(
              //         itemCount: 1,
              //         itemBuilder: (_, index) {
              //           return Row(
              //             children: [Text('Química'), Text('8.7')],
              //           );
              //         },
              //         separatorBuilder: (BuildContext context, int index) {
              //           return Container();
              //         },
              //       );
              //     },
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
