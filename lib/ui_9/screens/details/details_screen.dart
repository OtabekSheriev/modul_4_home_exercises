import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_9/constants.dart';
import 'package:modul_4_home_exercises/ui_9/screens/details/components/app_bar.dart';
import 'package:modul_4_home_exercises/ui_9/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
