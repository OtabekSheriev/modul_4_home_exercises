import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_13/screens/signup_screens.dart';

class Ui13 extends StatelessWidget {
  const Ui13({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Education App",
      theme: ThemeData(),
      home: const OnBoardingScreen(),
    );
  }
}

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(233, 240, 255, 1),
              Color.fromRGBO(215, 236, 255, 1),
            ],
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 225),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/assets13/images/eduVerse.png"),
                      const SizedBox(width: 20),
                      const Text(
                        "EduVerse",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 29,
                          fontFamily: "Inter",
                          color: Color.fromRGBO(65, 120, 243, 1),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 25),
                  const Text(
                    "Empowering Minds, Igniting Futures.",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: "Inter",
                      color: Color.fromRGBO(3, 3, 3, 1),
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignupScreens();
                      }));
                    },
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(27, 8, 218, 1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            fontFamily: "Inter",
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 5,
              left: 0,
              right: 0,
              child: Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/assets13/images/Frame.png"),
                      fit: BoxFit.fitWidth),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
