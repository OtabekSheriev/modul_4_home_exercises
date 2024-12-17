import 'package:flutter/material.dart';

class FormFeildText extends StatelessWidget {
  final String text;
  final String hintText;
  final Icon icons;

  const FormFeildText({
    super.key,
    required this.text,
    required this.hintText,
    required this.icons,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              fontFamily: 'Inter',
              color: Colors.grey),
        ),
        const SizedBox(height: 5),
        TextField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              fontFamily: 'Inter',
            ),
            suffixIcon: icons,
            filled: true,
            fillColor: const Color.fromARGB(255, 244, 246, 253),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
