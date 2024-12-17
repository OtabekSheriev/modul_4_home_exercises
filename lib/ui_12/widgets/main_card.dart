import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:modul_4_home_exercises/ui_12/screens/product_description_screen.dart';
import 'package:modul_4_home_exercises/ui_12/widgets/categories_items.dart';
import 'package:modul_4_home_exercises/ui_12/widgets/this_season_card.dart';

class MainCard extends StatelessWidget {
  final String image;
  const MainCard({
    super.key,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 25),
      child: Column(
        children: [
          ThisSeasonCard(
            image: image,
          ),
          const SizedBox(height: 40),
          Expanded(
            child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: categories.length,
              crossAxisSpacing: 20,
              mainAxisSpacing: 30,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ProductDescriptionScreen();
                      }));
                    },
                    child: Container(
                      height: 240,
                      width: 170,
                      color: const Color.fromRGBO(241, 241, 241, 1),
                      child: Stack(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage(categories[index].image),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                categories[index].text,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                "SHOP NOW",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                ),
                              ),
                              const Divider(
                                height: 2,
                                thickness: 2,
                                color: Colors.black,
                                endIndent: 52,
                                indent: 52,
                              )
                            ],
                          ),
                          const Positioned(
                            right: 10,
                            top: 10,
                            child: Image(
                              image:
                                  AssetImage("assets/assets12/icons/like.png"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                } else {
                  return Container(
                    height: 240,
                    width: 170,
                    color: const Color.fromRGBO(241, 241, 241, 1),
                    child: Stack(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage(categories[index].image),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              categories[index].text,
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "SHOP NOW",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                            const Divider(
                              height: 2,
                              thickness: 2,
                              color: Colors.black,
                              endIndent: 52,
                              indent: 52,
                            )
                          ],
                        ),
                        const Positioned(
                          right: 10,
                          top: 10,
                          child: Image(
                            image: AssetImage("assets/assets12/icons/like.png"),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            ),
          )
        ],
      ),
    );
  }
}
