// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class Constants {
  // ignore: constant_identifier_names, non_constant_identifier_names
  static String BASE_URL = 'https://jsonplaceholder.typicode.com/users';

  // Error Code
  static int INVALID_RESPONSE = 100;
  static int NO_INTERNET = 101;
  static int INVALID_FORMAT = 102;
  static int UNKNOWN_ERROR = 103;

// Color
  static Color scaffoldBackgroundColorDarkTheme = Colors.grey.shade900;
  static Color scaffoldBackgroundColorLightTheme = Colors.white;
}
