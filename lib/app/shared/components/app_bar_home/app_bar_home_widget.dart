import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/materia_card/materia_card_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';

class AppBarHomeWidget extends PreferredSize {
  AppBarHomeWidget()
      : super(
            preferredSize: Size.fromHeight(250),
            child: Container(
              height: 250,
              child: Stack(
                children: [
                  Container(
                    height: 161,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: double.maxFinite,
                    decoration:
                        BoxDecoration(gradient: AppGradients.blueGradient),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text.rich(TextSpan(text: 'Olá, ', children: [
                          TextSpan(
                            text: 'user.name',
                          )
                        ])),
                        Container(
                            width: 58,
                            height: 58,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage('urlimage'),
                                )))
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment(0.0, 1.0),
                    child: MateriaCardWidget(),
                  )
                ],
              ),
            ));
}
