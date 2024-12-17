import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/onboarding_screen1.dart';

class Ui14 extends StatelessWidget {
  const Ui14({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: " Travel App",
      theme: ThemeData(),
      home: const TravenorScreen(),
    );
  }
}

class TravenorScreen extends StatelessWidget {
  const TravenorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(13, 110, 253, 1),
      body: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return const OnboardingScreen1();
          }));
        },
        child: const Center(
          child: Text(
            "Travenor",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 34,
              fontFamily: 'Geometr415 Blk BT',
            ),
          ),
        ),
      ),
    );
  }
}
