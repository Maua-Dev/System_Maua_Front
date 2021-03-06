import 'package:flutter/material.dart';

class FaqCard extends StatefulWidget {
  final String title;
  final String description;
  final bool isOpen;
  final Function()? onPressed;

  const FaqCard(
      {Key? key,
      required this.title,
      required this.description,
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
                          widget.title,
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
              body: Padding(
                padding: EdgeInsets.fromLTRB(12, 4, 12, 8),
                child: Row(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      flex: 14,
                      child: Text(
                        widget.description,
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
          widget.onPressed!();
        },
      ),
    );
  }
}
