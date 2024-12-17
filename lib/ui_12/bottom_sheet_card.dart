import 'package:flutter/material.dart';

class BottomSheetCard extends StatelessWidget {
  final String title;
  final String picture;
  final String text;
  final String text2;
  final FontWeight weight;
  final double size;
  const BottomSheetCard({
    super.key,
    required this.title,
    required this.picture,
    required this.text,
    this.weight = FontWeight.w500,
    this.size = 14,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(picture),
        const SizedBox(width: 15),
        RichText(
          text: TextSpan(children: [
            TextSpan(
                text: title,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.black,
                    height: 1.8)),
            const TextSpan(
              text: "Wallet with chain\n",
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: Colors.black,
                  height: 2),
            ),
            TextSpan(
              text: text,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Color.fromRGBO(132, 132, 132, 1),
                height: 1.7,
              ),
            ),
            TextSpan(
              text: text2,
              style: TextStyle(
                  fontWeight: weight,
                  fontSize: size,
                  color: Colors.black,
                  height: 4),
            ),
          ]),
        ),
      ],
    );
  }
}
