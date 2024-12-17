import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_12/bottom_nav_bar.dart';
import 'package:modul_4_home_exercises/ui_12/widgets/main_card.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "bagzz",
          style: TextStyle(
              fontWeight: FontWeight.w700, fontSize: 22, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset("assets/assets12/images/Group 21.png"),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/assets12/icons/Main.svg"),
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      body: const MainCard(
        image: "assets/assets12/images/headerscreen.png",
      ),
    );
  }
}
