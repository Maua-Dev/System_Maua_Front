import 'package:flutter/material.dart';

class ExpansionPanelListCustomWidget extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final bool isOpen;
  final Widget? body;

  const ExpansionPanelListCustomWidget(
      {Key? key,
      required this.title,
      this.onPressed,
      required this.isOpen,
      this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionPanelList(
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
                    title,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
            body: body ?? SizedBox.shrink(),
          )
        ],
        expansionCallback: (i, isExpanded) {
          onPressed!();
        });
  }
}
