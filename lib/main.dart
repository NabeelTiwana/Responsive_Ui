import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_ui/constants.dart';
import 'package:responsive_ui/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //Light theme
      theme: ThemeData(
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: MyConstant.dark),
        textTheme: GoogleFonts.nunitoTextTheme(
          ThemeData.light().textTheme,
        ).apply(bodyColor: Colors.black, displayColor: Colors.black),
      ),
      //Dark theme
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        iconTheme: IconThemeData(color: MyConstant.light),
        textTheme:  GoogleFonts.nunitoTextTheme(
          ThemeData.light().textTheme,
        ).apply(bodyColor: Colors.white, displayColor: Colors.white),
      ),
      themeMode:ThemeMode.system,

      home: HomeScreen(),
    );

  }
}
