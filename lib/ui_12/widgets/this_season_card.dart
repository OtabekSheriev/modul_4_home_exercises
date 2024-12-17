import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_12/screens/header_screen.dart';

class ThisSeasonCard extends StatelessWidget {
  final String image;
  const ThisSeasonCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 205,
      child: Stack(
        children: [
          Container(
            height: 195,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 277,
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 51,
                width: 51,
                color: Colors.black,
                child: const Image(
                  image: AssetImage("assets/assets12/icons/back.png"),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 329,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const HeaderScreen();
                }));
              },
              child: Container(
                height: 51,
                width: 51,
                color: Colors.black,
                child: const Image(
                  image: AssetImage("assets/assets12/icons/forward.png"),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 40,
            right: 25,
            child: Text(
              "This\nseason's\nlatest",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
