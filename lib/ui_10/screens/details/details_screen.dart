import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_10/models/movie.dart';
import 'package:modul_4_home_exercises/ui_10/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Movie movie;

  const DetailsScreen({required this.movie}) : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(movie: movie),
    );
  }
}
