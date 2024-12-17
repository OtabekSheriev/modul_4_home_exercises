import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/bottom_navigation_item_bar.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/category_card.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/category_search.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 245, 245, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 62),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              "Categories",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w700,
                color: Color.fromRGBO(45, 12, 87, 1),
              ),
            ),
            const SizedBox(height: 20),
            const CategorySearch(),
            const SizedBox(height: 20),
            const CategoryCard(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationItemBar(),
    );
  }
}
