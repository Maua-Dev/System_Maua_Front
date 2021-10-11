import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class FaqCard extends StatefulWidget {
  final String titulo;
  final String descricao;
  final bool isOpen;
  final Function()? onPressed;

  const FaqCard(
      {Key? key,
      required this.titulo,
      required this.descricao,
      required this.isOpen,
      this.onPressed})
      : super(key: key);

  @override
  _FaqCardState createState() {
    return _FaqCardState();
  }
}

class _FaqCardState extends State<FaqCard> {
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
                padding: EdgeInsets.all(8),
                child: Text(
                  widget.descricao,
                  style: AppTextStyles.lightBody.copyWith(fontSize: 16),
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ],
          expansionCallback: (i, isExpanded) {
            widget.onPressed!();
          }),
    );
  }
}
