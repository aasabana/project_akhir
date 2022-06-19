import 'package:flutter/material.dart';

class Tema {
  Color _darkBlue = Color.fromARGB(255, 23, 54, 116);
  Color _LightGrey = Color.fromARGB(255, 153, 153, 153);
  Color _DarkGrey = Color.fromARGB(255, 114, 114, 114);

  static var of;

  ThemeData buildTema() {
    return ThemeData(
        canvasColor: _darkBlue,
        primaryColor: _LightGrey,
        secondaryHeaderColor: _DarkGrey,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: _LightGrey));
    InputDecorationTheme(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: _LightGrey,
          )),
      focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            color: _LightGrey,
          )),
    );
    ButtonThemeData(
        buttonColor: _DarkGrey,
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        minWidth: 200,
        height: 40.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)));
  }
}
