import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/onboarding_screen2.dart';
import 'package:modul_4_home_exercises/ui_14/screens/onboarding_screen3.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/next_button.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/on_boarding_picture.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/onboarding_text.dart';

class OnboardingScreen1 extends StatelessWidget {
  const OnboardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const OnBoardingPicture(
            picture: "assets/assets14/images/ship and water.png",
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const OnBoardingText(
                  text1: "Life is short and the\n",
                  text2: "world is ",
                  text3: "wide",
                  text4:
                      "At Friends tours and travel, we customize\nreliable and trutworthy educational tours to\ndestinations all over the world",
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 8,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color.fromRGBO(13, 110, 253, 1),
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const OnboardingScreen2();
                        }));
                      },
                      child: Container(
                        height: 8,
                        width: 13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color.fromRGBO(202, 234, 255, 1),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const OnboardingScreen3();
                        }));
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const OnboardingScreen3();
                          }));
                        },
                        child: Container(
                          height: 8,
                          width: 7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: const Color.fromRGBO(202, 234, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const OnboardingScreen2();
                    }));
                  },
                  child: const NextButton(
                    text: "Get Started",
                    fontFamily: 'Geometr415 Blk BT',
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
