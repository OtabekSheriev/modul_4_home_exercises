import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_9/constants.dart';
import 'package:modul_4_home_exercises/ui_9/screens/home_screen.dart';

class Ui9 extends StatelessWidget {
  const Ui9({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          scaffoldBackgroundColor: Colors.white,
          textTheme: const TextTheme(
            bodySmall: TextStyle(color: kSecondaryColor),
            bodyMedium: TextStyle(color: kSecondaryColor),
          )),
      home: const HomeScreen(),
    );
  }
}
