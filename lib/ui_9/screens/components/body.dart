import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_9/components/search_box.dart';
import 'package:modul_4_home_exercises/ui_9/screens/components/category_list.dart';
import 'package:modul_4_home_exercises/ui_9/screens/components/discount_card.dart';
import 'package:modul_4_home_exercises/ui_9/screens/components/item_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SearchBox(
          onChanged: (value) {},
        ),
        const CategoryList(),
        const ItemList(),
        const DiscountCard()
      ],
    );
  }
}
