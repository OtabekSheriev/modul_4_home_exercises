import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final String text;
  final String fontFamily;
  const NextButton({
    super.key,
    required this.text,
    required this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color.fromRGBO(13, 110, 253, 1),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            fontFamily: fontFamily,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
