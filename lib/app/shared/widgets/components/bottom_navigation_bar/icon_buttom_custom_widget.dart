import 'package:flutter/material.dart';

class IconButtonCustomWidget extends StatelessWidget {
  final Icon icon;
  final Function()? onPressed;
  const IconButtonCustomWidget({Key? key, required this.icon, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      alignment: Alignment.center,
      padding: const EdgeInsets.only(top: 16),
      iconSize: 32,
      icon: icon,
      color: Colors.white,
      onPressed: onPressed,
    );
  }
}
