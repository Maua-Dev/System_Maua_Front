import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_text_styles.dart';

class AvisosCard extends StatefulWidget {
  final String data;
  final String titulo;
  final String descricao;
  final bool isOpen;
  final Function()? onPressed;

  const AvisosCard(
      {Key? key,
      required this.data,
      required this.titulo,
      required this.descricao,
      required this.isOpen,
      this.onPressed})
      : super(key: key);

  @override
  _AvisosCardState createState() {
    return _AvisosCardState();
  }
}

class _AvisosCardState extends State<AvisosCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: ExpansionPanelList(
            elevation: 4,
            children: [
              ExpansionPanel(
                canTapOnHeader: true,
                isExpanded: widget.isOpen,
                headerBuilder: (context, isExpanded) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.black,
                            size: 20,
                          ),
                          Text(
                            widget.data,
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    Text(
                      widget.titulo,
                      style: TextStyle(color: Colors.black),
                    ),
                  ],
                ),
                body: Container(
                  child: Text(
                    widget.descricao,
                    style: AppTextStyles.lightBody,
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
