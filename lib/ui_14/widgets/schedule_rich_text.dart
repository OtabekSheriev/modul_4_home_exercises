import 'package:flutter/material.dart';

class ScheduleRichText extends StatelessWidget {
  final String text1;
  final String text2;
  const ScheduleRichText({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: text1,
            style: const TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 18,
              fontFamily: "SF UI Display",
              color: Colors.grey,
            ),
          ),
          TextSpan(
            text: text2,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 19,
              fontFamily: "SF UI Display",
              color: Colors.black,
              height: 2.3,
            ),
          )
        ],
      ),
    );
  }
}
