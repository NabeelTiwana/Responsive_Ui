import 'package:flutter/material.dart';
import 'package:responsive_ui/widgets/score_card_left_portion.dart';
import 'package:responsive_ui/widgets/score_card_right_portion.dart';

import '../constants.dart';
import '../shadow.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MyConstant.scoreCardSize,
      decoration: BoxDecoration(
        color: MyConstant.primaryColor,
        borderRadius: BorderRadius.circular(MyConstant.borderRadiusLg),
        boxShadow: MyShadow.scoreCardShadow,
      ),
      padding: EdgeInsets.all(MyConstant.lg),
      child: Row(
        children: [
          //Left Portion
          Expanded(
            flex: 2,
              child: ScoreCardLeftPortion()),
          //Right Portion
          Expanded(child: ScoreCardRightPortion()),
        ],
      ),
    );
  }
}



