import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';
import 'package:system_maua_front/app/shared/themes/app_gradients.dart';
import '../../../injection_container.dart';
import '../bottom_navigation_bar/bottom_navigation_bar_controller.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? toolbarHeight;
  final IconData? icon;
  final IconData? actionIcon;
  final Function()? iconFunction;

  const AppBarWidget({
    Key? key,
    required this.title,
    this.icon,
    this.actionIcon,
    this.toolbarHeight,
    this.iconFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controllerNavigationBar =
        serviceLocator<BottomNavigationBarController>();
    return AppBar(
      title: Align(alignment: Alignment.centerLeft, child: Text(title)),
      leading: IconButton(
        icon: Icon(Icons.adaptive.arrow_back),
        onPressed: () {
          controllerNavigationBar.alternatePage(0);
          Get.toNamed('/home');
        },
      ),
      actions: [
        if (actionIcon != null)
          IconButton(
            icon: Icon(
              actionIcon,
              color: AppColors.white,
            ),
            onPressed: iconFunction,
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
