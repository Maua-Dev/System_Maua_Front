import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

import 'notificacao_widget.dart';

class MuralDivulgacaoCardWidget extends StatelessWidget {
  final Color? corContainer;
  final Color? corContainerIcone;
  final IconData icon;
  final String titulo;
  final double iconSize;
  final void Function()? onTap;
  final int? textController;
  const MuralDivulgacaoCardWidget(
      {Key? key,
      this.corContainer,
      this.corContainerIcone,
      required this.icon,
      required this.titulo,
      required this.iconSize,
      this.onTap,
      this.textController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          elevation: 4,
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: corContainer,
              ),
              child: Center(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              color: corContainerIcone,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Icon(
                            icon,
                            color: AppColors.textButtonCollor,
                            size: iconSize,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            titulo,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            (textController != 0 || textController == null)
                ? NotificacaoWidget(
                    textController: textController,
                  )
                : SizedBox.shrink()
          ]),
        ));
  }
}
