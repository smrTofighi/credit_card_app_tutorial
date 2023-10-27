import 'package:credit_card_app/core/value/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    inputDecorationTheme: lightInputDecoration(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(LightColors.primary),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    ),
  );
}

InputDecorationTheme lightInputDecoration() {
  return InputDecorationTheme(
    focusColor: LightColors.primary,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    floatingLabelStyle: const TextStyle(
      color: LightColors.primary,
      fontWeight: FontWeight.w700,
      fontSize: 14,
    ),
    labelStyle: const TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w300,
      fontSize: 14,
    ),
    fillColor: Colors.white,
    filled: true,
    hintStyle: const TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w300,
      fontSize: 14,
    ),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey)),
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(color: Colors.grey)),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: LightColors.primary, width: 2),
    ),
  );
}
