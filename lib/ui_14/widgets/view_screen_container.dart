import 'package:flutter/material.dart';

class ViewScreenContainer extends StatelessWidget {
  final String image;
  final String text;
  final double width;
  const ViewScreenContainer({
    super.key,
    required this.image,
    required this.text,
    this.width = 190,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 80,
      width: width,
      decoration: BoxDecoration(
          color: Colors.black.withOpacity(.6),
          borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: 67,
            height: double.infinity,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          const SizedBox(width: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: text,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    fontFamily: "SF UI Display",
                    color: Colors.white,
                  ),
                ),
                const TextSpan(
                  text: "2.09 mi",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                    fontFamily: "SF UI Display",
                    color: Colors.white,
                    height: 1.7,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
