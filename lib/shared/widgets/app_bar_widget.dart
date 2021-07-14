import 'package:flutter/material.dart';
import 'package:system_maua_front/shared/themes/app_gradients.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final AppBar appBar;
  final Widget leadingWidget;
  final Widget iconBar;
  final Widget actionWidget;

  const AppBarWidget({
    Key? key,
    required this.title,
    required this.appBar,
    required this.leadingWidget,
    required this.iconBar,
    required this.actionWidget,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Padding(
        padding: const EdgeInsets.only(right: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            iconBar,
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
          padding: const EdgeInsets.all(14.0),
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
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
