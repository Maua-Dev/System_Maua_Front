import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class EquipesCardWidget extends StatelessWidget {
  final String titulo;
  final String? descricao;
  final String? contato;
  final void Function()? onPressed;
  final bool isOpen;
  const EquipesCardWidget(
      {Key? key,
      required this.titulo,
      this.contato,
      this.descricao,
      this.onPressed,
      required this.isOpen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ExpansionPanelList(
          animationDuration: Duration(seconds: 1),
          elevation: 4,
          expandedHeaderPadding: EdgeInsets.all(8),
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              isExpanded: isOpen,
              headerBuilder: (context, isExpanded) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Text(
                      titulo,
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              body: (descricao == null || contato == null)
                  ? SizedBox.shrink()
                  : Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: Column(
                        children: [
                          Text(
                            descricao!,
                            style:
                                AppTextStyles.lightBody.copyWith(fontSize: 16),
                            textAlign: TextAlign.left,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            child: RichText(
                                text: TextSpan(children: [
                              TextSpan(text: 'Contato: '),
                              TextSpan(text: contato)
                            ])),
                          )
                        ],
                      ),
                    ),
            )
          ],
          expansionCallback: (i, isExpanded) {
            onPressed!();
          }),
    );
  }
}
