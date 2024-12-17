import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CoursesCard extends StatelessWidget {
  final String image;
  final String starnumber;
  final double initialRating;

  const CoursesCard({
    super.key,
    required this.image,
    required this.starnumber,
    required this.initialRating,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 2,
          height: 88,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(8)),
        ),
        const SizedBox(height: 7),
        const Text(
          "Junior Scholars Institute",
          style: TextStyle(
              fontWeight: FontWeight.w800, fontSize: 11, fontFamily: 'Inter'),
        ),
        const SizedBox(height: 7),
        const Text(
          "Jon Brown",
          style: TextStyle(
              fontWeight: FontWeight.w400, fontSize: 11, fontFamily: 'Inter'),
        ),
        const SizedBox(height: 7),
        Row(
          children: [
            Text(
              starnumber,
              style: const TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 12,
                fontFamily: 'Inter',
                color: Colors.amber,
              ),
            ),
            const SizedBox(width: 3),
            RatingBar.builder(
              initialRating: initialRating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemSize: 14,
              itemPadding: const EdgeInsets.symmetric(
                horizontal: 2,
              ),
              itemBuilder: (context, _) => const Icon(
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (rating) {
                print(rating);
              },
            ),
            const SizedBox(width: 5),
            const Text(
              "(1,454)",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 10,
                fontFamily: 'Inter',
              ),
            ),
          ],
        ),
        const SizedBox(height: 7),
        const Text(
          "\$24",
          style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 12,
            fontFamily: 'Inter',
          ),
        ),
      ],
    );
  }
}
