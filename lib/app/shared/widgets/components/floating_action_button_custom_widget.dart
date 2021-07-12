import 'package:flutter/material.dart';

class FloatingActionButtonCustomWidget extends StatelessWidget {
  final Function()? onPressed;
  const FloatingActionButtonCustomWidget({Key? key, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.white,
        onPressed: onPressed,
        child: Icon(
          Icons.add,
          size: 40,
          color: Color(0xff022690),
        ),
      ),
    );
  }
}
