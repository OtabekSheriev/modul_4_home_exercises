import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_11/screens/splash_screen.dart';

class Ui11 extends StatelessWidget {
  const Ui11({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Delivery App",
      theme: ThemeData(),
      home: const SplashScreen(),
    );
  }
}
