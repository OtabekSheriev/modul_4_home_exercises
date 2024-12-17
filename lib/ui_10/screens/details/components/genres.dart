import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_10/components/genre_card.dart';
import 'package:modul_4_home_exercises/ui_10/constansts.dart';
import 'package:modul_4_home_exercises/ui_10/models/movie.dart';

class Genres extends StatelessWidget {
  const Genres({
    required this.movie,
  }) : super();

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      child: SizedBox(
        height: 36,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: movie.genra.length,
          itemBuilder: (context, index) => GenreCard(
            genre: movie.genra[index],
          ),
        ),
      ),
    );
  }
}
