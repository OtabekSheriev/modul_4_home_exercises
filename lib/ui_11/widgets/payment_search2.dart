import 'package:flutter/material.dart';

class PaymentSearch2 extends StatelessWidget {
  final String text;
  final String image;
  final String title;
  const PaymentSearch2({
    super.key,
    required this.text,
    required this.image,
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
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
                width: 1, color: const Color.fromARGB(255, 172, 81, 188)),
          ),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: title,
                    contentPadding: const EdgeInsets.only(left: 10),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Image.asset(
                  image,
                  height: 28,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
