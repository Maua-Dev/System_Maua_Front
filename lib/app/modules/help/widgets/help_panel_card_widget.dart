import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelpPanelCard extends StatelessWidget {
  final String titulo;
  final Icon? descricaoIcon;
  final String? descricaoNome;
  final bool isOpen;
  final Function()? onPressed;

  const HelpPanelCard({
    Key? key,
    required this.titulo,
    this.descricaoIcon,
    required this.isOpen,
    this.onPressed,
    this.descricaoNome,
  }) : super(key: key);

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
              body: descricaoNome == null
                  ? SizedBox.shrink()
                  : Padding(
                      padding: EdgeInsets.fromLTRB(12, 4, 12, 8),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                icon: descricaoIcon,
                              ),
                            ),
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Expanded(
                            flex: 14,
                            child: Text(
                              descricaoNome!,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
        ],
        expansionCallback: (i, isExpanded) {
          onPressed!();
        },
      ),
    );
  }
}
