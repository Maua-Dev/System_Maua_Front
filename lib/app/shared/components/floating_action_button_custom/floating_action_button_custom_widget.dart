import 'package:flutter/material.dart';
import 'package:system_maua_front/app/shared/themes/app_colors.dart';

class FloatingActionButtonCustomWidget extends StatefulWidget {
  final Function()? onPressed;
  final bool isOpen;
  const FloatingActionButtonCustomWidget(
      {Key? key, this.onPressed, required this.isOpen})
      : super(key: key);

  @override
  _FloatingActionButtonCustomWidgetState createState() =>
      _FloatingActionButtonCustomWidgetState();
}

class _FloatingActionButtonCustomWidgetState
    extends State<FloatingActionButtonCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      height: 64,
      child: FloatingActionButton(
          elevation: 10,
          backgroundColor: AppColors.textButtonCollor,
          onPressed: () {
            if (widget.onPressed != null) {
              widget.onPressed!();
            }
          },
          child: widget.isOpen
              ? Icon(
                  Icons.close,
                  color: AppColors.buttonBrandingBlue,
                  size: 30,
                )
              : Icon(
                  Icons.menu,
                  color: AppColors.buttonBrandingBlue,
                  size: 30,
                )),
    );
  }
}
