import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:modul_4_home_exercises/ui_11/screens/vegetables_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StaggeredGridView.countBuilder(
        crossAxisCount: 2,
        itemCount: 6,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        itemBuilder: (context, index) {
          List<String> images = [
            "assets/assets11/images/Vegetables.png",
            "assets/assets11/images/Fruits.png",
            "assets/assets11/images/Bread.png",
            "assets/assets11/images/Sweets.png",
            "assets/assets11/images/Pasta.png",
            "assets/assets11/images/Drinks.png",
          ];
          List<String> text1 = [
            "Vegetables",
            "Fruits",
            "Bread",
            "Sweets",
            "Pasta",
            "Drinks",
          ];
          List<String> text2 = [
            "(43)",
            "(32)",
            "(22)",
            "(56)",
            "(54)",
            "(23)",
          ];

          return Container(
            height: 211,
            width: 177,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color.fromRGBO(255, 255, 255, 1),
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  if (index == 0) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const VegetablesScreen(),
                      ),
                    );
                  }
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 140,
                      width: 177,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(images[index]),
                              fit: BoxFit.fill)),
                    ),
                    const SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            text1[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color.fromRGBO(45, 12, 87, 1),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            text2[index],
                            style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color.fromRGBO(91, 86, 86, 1)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
        staggeredTileBuilder: (index) => const StaggeredTile.extent(1, 211),
      ),
    );
  }
}
