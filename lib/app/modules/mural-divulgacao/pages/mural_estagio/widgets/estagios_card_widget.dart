import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/components/expansion_panel_list_custom/expansion_panel_list_custom_widget.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class EstagiosCardWidget extends StatelessWidget {
  final String titulo;
  final String? descricao;
  final String data;
  final void Function()? onPressed;
  final bool isOpen;
  const EstagiosCardWidget(
      {Key? key,
      required this.titulo,
      this.descricao,
      this.onPressed,
      required this.isOpen,
      required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ExpansionPanelListCustomWidget(
        isOpen: isOpen,
        title: titulo + ' - ' + data,
        onPressed: onPressed,
        body: (descricao == null)
            ? SizedBox.shrink()
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Text(
                  descricao!,
                  style: AppTextStyles.bodyH4,
                  textAlign: TextAlign.left,
                ),
              ),
      ),
    );
  }
}
