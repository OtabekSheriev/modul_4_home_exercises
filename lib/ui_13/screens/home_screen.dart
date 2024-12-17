import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:modul_4_home_exercises/ui_13/widgets/home_screen_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset('assets/assets13/icons/homeIcon.png'),
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/assets13/icons/Search.png',
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/assets13/icons/Play circle filled.png',
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/assets13/icons/Person.png'), label: ''),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 70, left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeScreenCard(
                title: "Recommended ",
                title2: "courses",
                image: "assets/assets13/images/course1.png",
                image2: "assets/assets13/images/course2.png",
                starnumber: "4",
                initialRating: 4,
              ),
              const SizedBox(height: 35),
              const HomeScreenCard(
                title: "Top ",
                title2: " trending",
                image: "assets/assets13/images/course3.png",
                image2: "assets/assets13/images/course4.png",
                starnumber: "5",
                initialRating: 5,
              ),
              const SizedBox(height: 35),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "Our ",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "top picks ",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Color.fromRGBO(82, 95, 225, 1),
                      ),
                    ),
                    TextSpan(
                      text: "for you",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        fontFamily: "Inter",
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/assets13/images/course5.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8)),
              ),
              const SizedBox(height: 7),
              const Text(
                "Programming for beginner",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 11,
                    fontFamily: 'Inter'),
              ),
              const SizedBox(height: 7),
              const Text(
                "Alex Chris",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 11,
                    fontFamily: 'Inter'),
              ),
              const SizedBox(height: 7),
              Row(
                children: [
                  const Text(
                    "5",
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(width: 3),
                  RatingBar.builder(
                    initialRating: 5,
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
          ),
        ),
      ),
    );
  }
}
