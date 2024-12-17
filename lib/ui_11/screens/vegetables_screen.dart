import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_11/screens/item_screen.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/bottom_navigation_item_bar.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/category_search.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/types.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/vegetables_card.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(246, 245, 245, 1),
        body: Stack(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: Image(
                image: AssetImage("assets/assets11/icons/Vector.png"),
                width: 190,
                height: 190,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 21, right: 21, top: 45),
              child: ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Image(
                          image: AssetImage(
                            "assets/assets11/icons/chevron-left.png",
                          ),
                          color: Color.fromRGBO(45, 12, 87, 1),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Vegetables",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(45, 12, 87, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const CategorySearch(),
                  const SizedBox(height: 25),
                  const Types(),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const ItemScreen();
                          },
                        ),
                      );
                    },
                    child: const VegetablesCard(
                      image: "assets/assets11/images/Lettuce.png",
                      title: "Boston Lettuce",
                      price: "1.10",
                      measure: "price",
                    ),
                  ),
                  const SizedBox(height: 5),
                  const VegetablesCard(
                    image: "assets/assets11/images/FloverCabbage.png",
                    title: "Purple Cauliflower",
                    price: "1.85",
                    measure: "kg",
                  ),
                  const SizedBox(height: 5),
                  const VegetablesCard(
                    image: "assets/assets11/images/Cabbage.png",
                    title: "Savoy Cabbage",
                    price: "1.45",
                    measure: "kg",
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: SafeArea(child: BottomNavigationItemBar()));
  }
}
