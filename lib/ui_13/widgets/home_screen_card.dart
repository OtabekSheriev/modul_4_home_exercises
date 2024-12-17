import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_13/widgets/courses_card.dart';

class HomeScreenCard extends StatelessWidget {
  final String title;
  final String title2;
  final String image;
  final String image2;
  final String starnumber;
  final double initialRating;

  const HomeScreenCard({
    super.key,
    required this.title,
    required this.title2,
    required this.image,
    required this.starnumber,
    required this.initialRating,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  fontFamily: "Inter",
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: title2,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  fontFamily: "Inter",
                  color: Color.fromRGBO(82, 95, 225, 1),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CoursesCard(
                image: image,
                starnumber: "5",
                initialRating: 5,
              ),
              SizedBox(width: 15),
              CoursesCard(
                image: image2,
                starnumber: starnumber,
                initialRating: initialRating,
              ),
            ],
          ),
        )
      ],
    );
  }
}
