import 'package:flutter/material.dart';

class LinearProgressIndicatorCustomWidget extends StatelessWidget {
  final double value;
  const LinearProgressIndicatorCustomWidget({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: value,
      backgroundColor: Color(0xFFE1E6E3),
      valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF04D361)),
    );
  }
}
