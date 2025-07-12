import 'package:flutter/material.dart';

class HelperFunctions {
  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
  static double screenHeight(BuildContext context){
    return MediaQuery.of(context).size.height;
  }
}
