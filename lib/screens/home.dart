import 'package:flutter/material.dart';
import 'package:responsive_ui/constants.dart';
import 'package:responsive_ui/helpers.dart';
import 'package:responsive_ui/shadow.dart';

import '../widgets/app_bar.dart';
import '../widgets/score_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDark(context);
    return Scaffold(
      body: Container(
        color: isDark ? MyConstant.dark : MyConstant.light,
        child: Column(
          children: [
            //Home App Bar
            SafeArea(child: HomeAppBar()),
             SizedBox(height: MyConstant.spaceBtwSection),
             //Yellow Score Card
            ScoreCard(),
          ],
        ),
      ),
    );
  }
}


