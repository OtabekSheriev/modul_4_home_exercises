import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/detail_screen.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/home_bar_container.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/home_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 56),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeBarContainer(),
            const SizedBox(height: 40),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Explore the\n",
                    style: TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 38,
                        fontFamily: "SF UI Display",
                        color: Colors.black),
                  ),
                  TextSpan(
                    text: "Beautiful ",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 38,
                        fontFamily: "SF UI Display",
                        color: Colors.black,
                        height: 1.5),
                  ),
                  TextSpan(
                    text: "world!",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 38,
                      fontFamily: "SF UI Display",
                      color: Color.fromRGBO(255, 112, 41, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Destination",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    fontFamily: "SF UI Display",
                    color: Colors.black,
                  ),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    fontFamily: "SF UI Display",
                    color: Color.fromRGBO(13, 110, 253, 1),
                  ),
                )
              ],
            ),
            const SizedBox(height: 35),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailScreen();
                      }));
                    },
                    child: HomeContainer(
                      text: "Niladri Reservoir",
                      text2: "Terkergat, Sunamgnj",
                      image: "assets/assets14/images/homeimage1.jpg",
                    ),
                  ),
                  HomeContainer(
                    text: "Darma Reservoir",
                    text2: "Darma, Sunamgnj",
                    image: "assets/assets14/images/homeimage2.jpg",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
