import 'package:flutter/material.dart';

class FNColors {
  FNColors._();

  static const Color primaryColor = Color(0xff9C2CF3);
  static const Color secondaryColor = Color(0xff3A49F9);

  static const Gradient linerGradient = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color(0xff9C2CF3),
      Color(0xff3A49F9),
    ],
  );
}
