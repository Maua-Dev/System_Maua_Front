import 'package:flutter/material.dart';
import 'package:system_maua_front/shared/themes/app_colors.dart';

class FloatingActionButtonCustomWidget extends StatefulWidget {
  final Function()? onPressed;
  const FloatingActionButtonCustomWidget({Key? key, this.onPressed})
      : super(key: key);

  @override
  _FloatingActionButtonCustomWidgetState createState() =>
      _FloatingActionButtonCustomWidgetState();
}

class _FloatingActionButtonCustomWidgetState
    extends State<FloatingActionButtonCustomWidget>
    with SingleTickerProviderStateMixin {
  bool expanded = true;
  late AnimationController controller;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
      reverseDuration: Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: GestureDetector(
        child: FloatingActionButton(
          elevation: 10,
          backgroundColor: AppColors.white,
          onPressed: () {
            if (widget.onPressed != null) {
              widget.onPressed!();
            }
            expanded ? controller.forward() : controller.reverse();
            expanded = !expanded;
          },
          child: AnimatedIcon(
            size: 30,
            icon: AnimatedIcons.menu_close,
            progress: controller,
            color: AppColors.darkBlue,
          ),
        ),
      ),
    );
  }
}
