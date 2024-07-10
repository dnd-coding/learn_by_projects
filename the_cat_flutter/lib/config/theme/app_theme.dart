import 'dart:ui';

import 'package:flutter/material.dart';

const Color royalPurple = Color.fromARGB(255, 86, 29, 229);
const Color electricCyan = Color.fromARGB(255, 0, 234, 205);
const Color navyBlue = Color(0xFF303F9F);

final ThemeData appTheme = ThemeData(
  primaryColor: royalPurple,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: electricCyan),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: navyBlue,
      fixedSize: const Size(
        200,
        60,
      ),
      textStyle: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
    ),
  ),
);
