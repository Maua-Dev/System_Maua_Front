import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class EquipesCardWidget extends StatelessWidget {
  final String titulo;
  final String? descricao;
  final void Function()? onPressed;
  const EquipesCardWidget(
      {Key? key, required this.titulo, this.descricao, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
        animationDuration: Duration(seconds: 1),
        elevation: 4,
        expandedHeaderPadding: EdgeInsets.all(8),
        children: [
          ExpansionPanel(
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
            body: descricao == null
                ? SizedBox.shrink()
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      descricao!,
                      style: AppTextStyles.lightBody.copyWith(fontSize: 16),
                      textAlign: TextAlign.left,
                    ),
                  ),
          )
        ],
        expansionCallback: (i, isExpanded) {
          onPressed!();
        });
  }
}
