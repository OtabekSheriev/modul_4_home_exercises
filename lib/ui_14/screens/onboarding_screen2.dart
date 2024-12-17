import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/onboarding_screen1.dart';
import 'package:modul_4_home_exercises/ui_14/screens/onboarding_screen3.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/next_button.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/on_boarding_picture.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/onboarding_text.dart';

class OnboardingScreen2 extends StatelessWidget {
  const OnboardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const OnBoardingPicture(
            picture: "assets/assets14/images/image2.jpeg",
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const OnBoardingText(
                  text1: " It's a big world out\n",
                  text2: "there go ",
                  text3: "explore",
                  text4:
                      "To get the best of your adventure you just need to leave and go where you like. we are waiting for you",
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return OnboardingScreen1();
                        }));
                      },
                      child: Container(
                        height: 8,
                        width: 13,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color.fromRGBO(202, 234, 255, 1),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 8,
                      width: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(13, 110, 253, 1),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 8,
                      width: 7,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color.fromRGBO(202, 234, 255, 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 35),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const OnboardingScreen3();
                    }));
                  },
                  child: NextButton(
                    text: 'Next',
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
