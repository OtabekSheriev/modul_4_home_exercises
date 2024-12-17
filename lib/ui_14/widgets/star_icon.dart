import 'package:flutter/material.dart';

class StarIcon extends StatelessWidget {
  final Color textcolor;
  const StarIcon({
    super.key,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.star,
          color: Color.fromARGB(255, 245, 223, 24),
          size: 16,
        ),
        Text(
          "4.7",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            fontFamily: "SF UI Display",
            color: textcolor,
          ),
        )
      ],
    );
  }
}
