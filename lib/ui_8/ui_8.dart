import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/welcome_screen.dart';
import 'package:modul_4_home_exercises/ui_8/constants.dart';

class Ui8 extends StatelessWidget {
  const Ui8({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Auth",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
    );
  }
}
