import 'package:flutter/material.dart';

class MyShadow{
  static  List<BoxShadow> scoreCardShadow=[
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.1),
      spreadRadius: 1,
      blurRadius: 2,
      offset: Offset(2, 1),
    ),
  ];
}