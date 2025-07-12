import 'package:flutter/material.dart';
import 'package:responsive_ui/constants.dart';

class ScoreCardRightPortion extends StatelessWidget {
  const ScoreCardRightPortion({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        width: MyConstant.homeCircularIndicator,
        height: MyConstant.homeCircularIndicator,
        child: Stack(
          children: [
            //Indicator
            SizedBox(
              width: MyConstant.homeCircularIndicator,
              height: MyConstant.homeCircularIndicator,
              child: CircularProgressIndicator(
                value: 0.9,
                color: MyConstant.dark,
                strokeWidth: 14.0,
                backgroundColor: Colors.black12,
                strokeCap: StrokeCap.round,
              ),
            ),
            //Percentage Value
            Center(
              child: Text(
                '98%',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 26.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
