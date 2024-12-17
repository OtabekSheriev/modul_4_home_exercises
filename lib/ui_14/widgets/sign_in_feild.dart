import 'package:flutter/material.dart';

class SignInFeild extends StatelessWidget {
  final bool obscureText;
  final String text;
  const SignInFeild({
    super.key,
    required this.obscureText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 247, 246, 246),
        borderRadius: BorderRadius.circular(14),
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontFamily: 'SF UI Display',
            color: Colors.grey,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide.none,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        ),
      ),
    );
  }
}
