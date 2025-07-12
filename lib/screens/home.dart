import 'dart:io';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive_ui/constants.dart';
import 'package:responsive_ui/helpers.dart';

import '../widgets/app_bar.dart';
import '../widgets/emojis_list.dart';
import '../widgets/score_card.dart';
import '../widgets/task_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunctions.isDark(context);
    return Scaffold(
      body: Stack(
        children: [
          //Body
          Container(
            color: isDark ? MyConstant.dark : MyConstant.light,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //Home App Bar
                  SafeArea(child: HomeAppBar()),
                  Padding(
                    padding: const EdgeInsets.all(MyConstant.screenPadding),
                    child: Column(
                      children: [
                        // SizedBox(height: MyConstant.spaceBtwSection),
                        //Yellow Score Card
                        ScoreCard(),
                        SizedBox(height: MyConstant.spaceBtwSection),
                        //Chose your Mode Headline
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Choose your mood for today',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_sharp,
                              color: MyConstant.primaryColor,
                            ),
                          ],
                        ),
                        SizedBox(height: MyConstant.spaceBtwSection),
                        //Emoji list
                        EmojisList(),
                        SizedBox(height: MyConstant.spaceBtwSection),
                        GridView.builder(
                          padding: EdgeInsets.zero,
                          itemCount: 10,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                crossAxisSpacing: MyConstant.spaceBtwItems,
                                mainAxisSpacing: MyConstant.spaceBtwItems,
                                mainAxisExtent:
                                    HelperFunctions.screenHeight(context) *
                                    0.22,
                              ),
                          itemBuilder: (context, index) {
                            return TaskCard(index: index);
                          },
                        ),
                        SizedBox(height: MyConstant.spaceBtwSection * 3),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //Bottom Navigation bar
          Positioned(
            bottom: Platform.isIOS ? 0 : MyConstant.spaceBtwItems,
            left: MyConstant.screenPadding,
            right: MyConstant.screenPadding,
            child: SafeArea(
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(1000),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Container(
                    color: Colors.black.withValues(
                      alpha: HelperFunctions.isDark(context) ? 0.5 : 0.7,
                    ),
                    child: BottomNavigationBar(
                      backgroundColor: Colors.transparent,
                      elevation: 20,
                      type: BottomNavigationBarType.fixed,
                      selectedItemColor: MyConstant.primaryColor,
                      unselectedItemColor: Colors.white,
                      items: [
                        BottomNavigationBarItem(
                          icon: Icon(Icons.home_filled),
                          label: 'Home',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.bar_chart),
                          label: 'Analytics',
                        ),
                        BottomNavigationBarItem(
                          icon: Icon(Icons.person),
                          label: 'Profile',
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
