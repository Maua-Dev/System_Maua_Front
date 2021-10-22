import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? toolbarHeight;
  final Widget? leadingWidget;
  final IconData? icon;
  final Widget? actionWidget;

  const AppBarWidget({
    Key? key,
    required this.title,
    this.leadingWidget,
    this.icon,
    this.actionWidget,
    this.toolbarHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: EdgeInsets.only(
          right: MediaQuery.of(context).size.width * 0.15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Icon(icon),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              child: Text(title),
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
