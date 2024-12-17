import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_9/screens/components/app_bar.dart';
import 'package:modul_4_home_exercises/ui_9/screens/components/body.dart';
import 'package:modul_4_home_exercises/ui_9/screens/components/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: const BottomNavBar(),
      body: const SingleChildScrollView(child: Body()),
    );
  }
}
