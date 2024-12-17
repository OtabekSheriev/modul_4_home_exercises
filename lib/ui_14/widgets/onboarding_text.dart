import 'package:flutter/material.dart';

class OnBoardingText extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  const OnBoardingText({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 35,
                fontFamily: 'Geometr415 Blk BT',
                color: Colors.black),
            children: [
              TextSpan(
                text: text1,
              ),
              TextSpan(text: text2),
              TextSpan(
                  text: text3,
                  style:
                      const TextStyle(color: Color.fromRGBO(255, 112, 41, 1)))
            ],
          ),
        ),
        const SizedBox(height: 30),
        Text(
          text4,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            fontFamily: 'Geometr415 Blk BT',
            color: Color.fromRGBO(171, 176, 182, 1),
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
