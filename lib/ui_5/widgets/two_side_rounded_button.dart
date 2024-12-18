import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_5/constants.dart';

class TwoSideRoundedButton extends StatelessWidget {
  final String text;
  final double radious;
  final VoidCallback press;
  const TwoSideRoundedButton({
    super.key,
    required this.text,
    this.radious = 29,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(radious),
              bottomRight: Radius.circular(radious),
            )),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
