import 'dart:ui';

import 'package:flutter/material.dart';

import 'data_model.dart';

class MyConstant {
  //Images
  static const String profile = 'assets/images/MY photo.jpg';

  //Colors

  static const Color primaryColor = Color(0xFFFECA1F);
  static final Color dark = Color(0xFF21242C);
  static final Color light = Color(0xFFf0f3ff);
  static final Color darkGrey = Color(0xFF323540);

  //Sizes
  static const double spaceBtwItems = 16.0;
  static const double screenPadding = 16.0;
  static const double spaceBtwSection = 24.0;

  static const double xs = 4.0; //extra small
  static const double sm = 8.0; //small
  static const double md = 16.0; //medium
  static const double lg = 24.0; //large
  static const double xl = 32.0; //extra large

  //Icon sizes
  static const double iconSize = 24.0; //medium

  //Radius

  static const double borderRadiusMd = 24.0;
  static const double borderRadiusLg = 32.0;

  static const double scoreCardSize = 160.0;
  static const double homeCircularIndicator = 110.0;
  static const double emojiCardSize = 75.0;


  static List<DataModel> data = [
    DataModel(color: Colors.blue, title1: '7h', title2: '30m', name: 'Sleep', icon: Icons.ac_unit_outlined, description: "Good start, don't stop"),
    DataModel(color: Colors.orange, title1: '3h', title2: '', name: 'Sunlight', icon: Icons.light_mode, description: "You've done it!"),
    DataModel(color: Colors.green, title1: '1h', title2: '23m', name: 'Fasting', icon: Icons.free_breakfast, description: "Good start, don't stop"),
    DataModel(color: Colors.purple, title1: '15', title2: 'pcs', name: 'Supplements', icon: Icons.sports_football_sharp, description: "Good start, don't stop"),
    DataModel(color: Colors.blue, title1: '7h', title2: '30m', name: 'Sleep', icon: Icons.ac_unit_outlined, description: "Good start, don't stop"),
    DataModel(color: Colors.orange, title1: '3h', title2: '', name: 'Sunlight', icon: Icons.light_mode, description: "You've done it!"),
    DataModel(color: Colors.green, title1: '1h', title2: '23m', name: 'Fasting', icon: Icons.free_breakfast, description: "Good start, don't stop"),
    DataModel(color: Colors.purple, title1: '15', title2: 'pcs', name: 'Supplements', icon: Icons.sports_football_sharp, description: "Good start, don't stop"),
    DataModel(color: Colors.blue, title1: '7h', title2: '30m', name: 'Sleep', icon: Icons.ac_unit_outlined, description: "Good start, don't stop"),
    DataModel(color: Colors.orange, title1: '3h', title2: '', name: 'Sunlight', icon: Icons.light_mode, description: "You've done it!"),
    DataModel(color: Colors.green, title1: '1h', title2: '23m', name: 'Fasting', icon: Icons.free_breakfast, description: "Good start, don't stop"),
    DataModel(color: Colors.purple, title1: '15', title2: 'pcs', name: 'Supplements', icon: Icons.sports_football_sharp, description: "Good start, don't stop"),
  ];

}
