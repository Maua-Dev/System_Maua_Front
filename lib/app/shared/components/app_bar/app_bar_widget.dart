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
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (leadingWidget == null)
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.07,
            ),
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
      leading: leadingWidget,
      actions: <Widget>[
        if (actionWidget != null)
          Container(
            child: actionWidget,
          )
        else
          Padding(
            padding:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * 0.15),
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
