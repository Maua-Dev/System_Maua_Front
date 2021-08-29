import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class SofwaresCard extends StatefulWidget {
  final String titulo;
  final String descricao;
  final bool isOpen;
  final Function()? onPressed;

  const SofwaresCard(
      {Key? key,
      required this.titulo,
      required this.descricao,
      required this.isOpen,
      this.onPressed})
      : super(key: key);

  @override
  _SoftwaresCardState createState() {
    return _SoftwaresCardState();
  }
}

class _SoftwaresCardState extends State<SofwaresCard> {
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
                isExpanded: widget.isOpen,
                headerBuilder: (context, isExpanded) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Text(
                        widget.titulo,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                body: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    widget.descricao,
                    style: AppTextStyles.lightBody.copyWith(fontSize: 16),
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
