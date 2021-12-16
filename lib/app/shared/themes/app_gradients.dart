import 'dart:math';

import 'package:flutter/material.dart';

class AppGradients {
  static final blueGradient = LinearGradient(colors: [
    Color(0xFF02268F),
    Color(0xFF0264FF),
  ], stops: [
    0.2,
    0.995
  ], transform: GradientRotation(2.079913 * pi));
}
