import 'package:flutter/material.dart';

class CheckoutTitles extends StatelessWidget {
  final String title;
  final String text;
  final VoidCallback press;
  const CheckoutTitles({
    super.key,
    required this.title,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Color.fromRGBO(45, 12, 87, 1)),
        ),
        TextButton(
          onPressed: press,
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 15,
              color: Color.fromRGBO(114, 3, 255, 1),
            ),
          ),
        )
      ],
    );
  }
}
