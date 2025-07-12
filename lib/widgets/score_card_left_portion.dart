import 'package:flutter/material.dart';

class ScoreCardLeftPortion extends StatelessWidget {
  const ScoreCardLeftPortion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Daily Score',
          style: TextStyle(
            fontSize: 26.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Text(
              '4/7 ',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
            Text(
              'task completed',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}