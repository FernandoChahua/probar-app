import 'package:flutter/material.dart';

abstract class Palette {
  Palette();
  static const Color grayBorder = Color.fromARGB(156, 104, 146, 147);

  static const Color loginButtonColor = Color.fromARGB(255, 25, 57, 57);

  static const Color primary = Color(0xFF212121);

  static const Color white = Color(0xFFFFFFFF);
  static const Color primaryText = Color.fromARGB(255, 124, 162, 163);

  static const Color appBarColor = Color.fromARGB(255, 133, 157, 160);

  static const Color menuTextColor = Color(0xFF767676);

  static const Color underlineColor = Color(0xFFD9D9D9);

  static const Color black = Color.fromARGB(255, 0, 0, 0);
  static const Color gray = Color.fromARGB(176, 66, 66, 66);

  static const Color lightGray = Color.fromARGB(175, 90, 90, 90);
  static const Color darkGray = Color.fromARGB(197, 48, 48, 48);

  static const Color green = Color.fromARGB(247, 80, 170, 44);

  static Color transparent = Colors.transparent;
  static const Color whiteChat = Color.fromARGB(255, 244, 241, 241);
}
