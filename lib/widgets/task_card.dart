import 'package:flutter/material.dart';
import 'package:responsive_ui/constants.dart';
import 'package:responsive_ui/helpers.dart';
import 'package:responsive_ui/shadow.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDark(context);
    final singleTask=MyConstant.data[index];
    return Stack(
      children: [
        //Task Card
        Container(
          height: HelperFunctions.screenHeight(context) * 0.22,
          width: double.infinity,
          decoration: BoxDecoration(
            color: isDark ? MyConstant.darkGrey : MyConstant.light,
            borderRadius: BorderRadius.circular(MyConstant.borderRadiusLg),
            boxShadow: MyShadow.scoreCardShadow,
          ),
          child: Padding(
            padding: const EdgeInsets.all(MyConstant.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  singleTask.title1,
                  style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  singleTask.title2,
                  style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: MyConstant.sm),
                Text(
                  singleTask.name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
                SizedBox(height: MyConstant.xs),
                Flexible(
                  child: Text(
                   singleTask.description,
                    style: TextStyle(
                      color: Colors.grey,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
         //Indicator & icon
        Positioned(
          top: 4.0,
          right: 4.0,

          child: Container(
            decoration: BoxDecoration(
              color: singleTask.color.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(1000),
            ),
            child: SizedBox(
              height: 50,
              width: 50,
              child: Stack(
                children: [
                  //Indicator
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircularProgressIndicator(
                      value: 0.2,
                      backgroundColor: Colors.black,
                      strokeWidth: 6.0,
                      strokeCap: StrokeCap.round,
                      color: singleTask.color,
                    ),
                  ),
                  //Icon
                  Center(
                    child: Icon(
                      singleTask.icon,
                      color: isDark ? MyConstant.light : MyConstant.dark,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
