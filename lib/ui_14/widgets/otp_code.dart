import 'package:flutter/material.dart';

class OTPCode extends StatelessWidget {
  final String text;
  const OTPCode({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 74,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 247, 246, 246),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 19,
            fontFamily: "SF UI Display",
          ),
        ),
      ),
    );
  }
}
