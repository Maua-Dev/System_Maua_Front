import 'package:flutter/material.dart';

class IconButtonCustomWidget extends StatelessWidget {
  final IconData icon;
  final Function()? onPressed;
  final double? size;
  final bool isClicked;
  const IconButtonCustomWidget(
      {Key? key,
      required this.icon,
      this.onPressed,
      this.size,
      required this.isClicked})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: size ?? 28),
          isClicked
              ? Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                )
              : SizedBox.shrink()
        ],
      ),
    );
  }
}
