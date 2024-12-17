import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_10/constansts.dart';
import 'package:modul_4_home_exercises/ui_10/screens/home/components/categories.dart';
import 'package:modul_4_home_exercises/ui_10/screens/home/components/genres.dart';
import 'package:modul_4_home_exercises/ui_10/screens/home/components/movie_carousel.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it enable scroll on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Categorylist(),
          Genres(),
          const SizedBox(height: kDefaultPadding),
          MovieCarousel(),
        ],
      ),
    );
  }
}
