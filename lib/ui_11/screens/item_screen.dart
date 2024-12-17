import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/item_screen_components.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/item_triple.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/assets11/images/LettuceBig.png"),
                  alignment: Alignment.topCenter),
            ),
            child: const Column(
              children: <Widget>[
                ItemTriple(),
                SizedBox(height: 15),
                ItemScreenComponents()
              ],
            ),
          ),
          Positioned(
            top: 40,
            left: 15,
            child: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
              iconSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
