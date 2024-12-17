import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_9/screens/components/item_card.dart';
import 'package:modul_4_home_exercises/ui_9/screens/details/details_screen.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            title: "Burger & Beer",
            shopname: "MacDonald's",
            svgSrc: "assets/assets9/icons/burger_beer.svg",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            title: "Chinese & Noodles",
            shopname: "Wendys",
            svgSrc: "assets/assets9/icons/chinese_noodles.svg",
            press: () {},
          ),
          ItemCard(
            title: "Burger & Beer",
            shopname: "MacDonald's",
            svgSrc: "assets/assets9/icons/burger_beer.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
