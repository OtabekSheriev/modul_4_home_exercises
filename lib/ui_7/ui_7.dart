import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_7/Screens/home_screen.dart';
import 'package:modul_4_home_exercises/ui_7/constants.dart';

class Ui7 extends StatelessWidget {
  const Ui7({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Covid-19 App",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTextColor),
      ),
      home: const HomeScreen(),
    );
  }
}
