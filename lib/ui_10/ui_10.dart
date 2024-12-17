import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_10/screens/home/home_screen.dart';

class Ui10 extends StatelessWidget {
  const Ui10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Movie App",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
