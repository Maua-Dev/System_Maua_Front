import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Text? title;
  final double? toolbarHeight;
  final Widget? leadingWidget;
  final Widget? iconBar;
  final Widget? actionWidget;

  const AppBarWidget({
    Key? key,
    this.title,
    this.leadingWidget,
    this.iconBar,
    this.actionWidget,
    this.toolbarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: iconBar,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: title,
            ),
          ],
        ),
      ),
      leading: leadingWidget,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Container(
            child: actionWidget,
          ),
        )
      ],
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: AppGradients.blueGradient,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(toolbarHeight ?? kToolbarHeight);
}
