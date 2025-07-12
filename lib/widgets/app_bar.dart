import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../constants.dart';
import 'circular_icon.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: AppBar(
        backgroundColor: Colors.transparent,
        //profile Picture & user Name
        title: Row(
          children: [
            //ProfilePicture
            CircleAvatar(
              backgroundImage: AssetImage(MyConstant.profile),
              maxRadius: 28,
              minRadius: 20,
            ),
            SizedBox(width: MyConstant.spaceBtwItems),
            //User Name
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Welcome back', style: TextStyle(fontSize: 18.0)),
                Text(
                  'M Nabeel',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
        actionsPadding: EdgeInsets.only(right: MyConstant.screenPadding),

        actions: [
          //Notification  Icon
          CircularIcon(icon: Iconsax.notification5),
          SizedBox(width: MyConstant.spaceBtwItems),
          //calendar Icon
          CircularIcon(icon: Iconsax.calendar5),
        ],
      ),
    );
  }
}
