import 'package:flutter/cupertino.dart';

import '../constants.dart';
import '../helpers.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDark(context);
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(color: isDark ? MyConstant.light : MyConstant.dark),
        borderRadius: BorderRadius.circular(1000),
      ),
      child: Icon(icon, size: MyConstant.iconSize),
    );
  }
}
