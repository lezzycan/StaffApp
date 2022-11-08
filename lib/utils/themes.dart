import 'package:flutter/material.dart';

import 'constants.dart';

class MyThemes {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Constants.scaffoldBackgroundColorDarkTheme,
 // brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(),
  primarySwatch: Colors.blue,
  );



  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Constants.scaffoldBackgroundColorLightTheme,
  //brightness: Brightness.light,
  colorScheme: const ColorScheme.light(),
  primarySwatch: Colors.blue,
  );
}
