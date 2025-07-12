import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:responsive_ui/constants.dart';
import 'package:responsive_ui/helpers.dart';
import 'package:responsive_ui/shadow.dart';

class EmojisList extends StatelessWidget {
  const EmojisList({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDark(context);
    return SizedBox(
      height: 81.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) =>
            SizedBox(width: MyConstant.spaceBtwItems / 2),
        itemCount: 5,
        itemBuilder: (context, index) {
          List<String> emojis = ['😀', '🎉', '🍕', '🚀', '❤️'];
          return buildEmojiCard(isDark, emojis, index);
        },
      ),
    );
  }

  Padding buildEmojiCard(bool isDark, List<String> emojis, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3.0),
      child: Container(
        height: MyConstant.emojiCardSize,
        width: MyConstant.emojiCardSize,
        decoration: BoxDecoration(
          color: isDark ? MyConstant.darkGrey : MyConstant.light,
          borderRadius: BorderRadius.circular(MyConstant.borderRadiusMd),
          boxShadow: MyShadow.scoreCardShadow,
        ),
        child: Center(
          child: Text(
            emojis[index],
            style: TextStyle(fontSize: Platform.isAndroid ? 30 : 40),
          ),
        ),
      ),
    );
  }
}
