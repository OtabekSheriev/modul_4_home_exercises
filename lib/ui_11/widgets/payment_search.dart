import 'package:flutter/material.dart';

class PaymentSearch extends StatelessWidget {
  final String text;
  final String title;
  const PaymentSearch({
    super.key,
    required this.text,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Color.fromRGBO(149, 134, 168, 1)),
          ),
        ),
        Container(
          height: 48,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                width: 1, color: const Color.fromARGB(255, 172, 81, 188)),
          ),
          child: TextField(
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 17,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: title,
            ),
          ),
        ),
      ],
    );
  }
}
