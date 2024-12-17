import 'package:flutter/material.dart';

class DetailImages extends StatelessWidget {
  final String image;
  final String text;
  const DetailImages({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        image: DecorationImage(
            image: AssetImage(
              image,
            ),
            fit: BoxFit.cover),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontFamily: "SF UI Display",
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
