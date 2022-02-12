import 'package:flutter/material.dart';

mixin ThemeDataService {
  static ThemeData get themeData => mainThemeData;

  static ThemeData mainThemeData = ThemeData.from(colorScheme: colorScheme);

  static const color1 = Color(0xFF808080);
  static const color2 = Color(0xFFC4C4C4);
  static const color3 = Color(0xFF454545);
  static const ColorScheme colorScheme = ColorScheme.dark(
    background: color1,
    onBackground: Colors.black,
    primary: color2,
    onPrimary: Colors.black,
    tertiary: color3,
    onTertiary: Colors.black,
  );
}
