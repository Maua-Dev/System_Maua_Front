import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class EventCardWidget extends StatefulWidget {
  final String titulo;
  final String horario;
  final String descricao;
  final Function()? onPressed;
  final Color corEvento;
  final bool isOpen;

  EventCardWidget({
    Key? key,
    required this.titulo,
    required this.horario,
    this.onPressed,
    required this.isOpen,
    required this.descricao,
    required this.corEvento,
  }) : super(key: key);

  @override
  _EventCardWidgetState createState() => _EventCardWidgetState();
}

class _EventCardWidgetState extends State<EventCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: ExpansionPanelList(
            expandedHeaderPadding: EdgeInsets.symmetric(vertical: 8),
            elevation: 4,
            children: [
              ExpansionPanel(
                canTapOnHeader: true,
                isExpanded: widget.isOpen,
                headerBuilder: (context, isExpanded) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Container(
                          height: 12,
                          width: 12,
                          decoration: BoxDecoration(
                              color: widget.corEvento,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          widget.titulo + ' - ' + widget.horario,
                          style: AppTextStyles.bodyBoldH4,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                body: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Text(
                    widget.descricao,
                    style: AppTextStyles.cardH3,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
            expansionCallback: (i, isExpanded) {
              widget.onPressed!();
            }));
  }
}
