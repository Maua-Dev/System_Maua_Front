import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class EventCardWidget extends StatefulWidget {
  final String titulo;
  final String horario;
  final String descricao;
  final Function()? onPressed;
  late bool isOpen;

  EventCardWidget({
    Key? key,
    required this.titulo,
    required this.horario,
    this.onPressed,
    required this.isOpen,
    required this.descricao,
  }) : super(key: key);

  @override
  _EventCardWidgetState createState() => _EventCardWidgetState();
}

class _EventCardWidgetState extends State<EventCardWidget>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        child: ExpansionPanelList(
            expandedHeaderPadding: EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            children: [
              ExpansionPanel(
                canTapOnHeader: true,
                isExpanded: widget.isOpen,
                headerBuilder: (context, isExpanded) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.titulo + ' - ' + widget.horario,
                        style: AppTextStyles.bodyBold,
                      ),
                    ],
                  ),
                ),
                body: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Text(
                    widget.descricao,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
            expansionCallback: (i, isExpanded) {
              setState(() {
                widget.isOpen = !widget.isOpen;
              });
            }));
  }
}
