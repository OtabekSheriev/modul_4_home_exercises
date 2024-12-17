import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_9/constants.dart';

class SearchBox extends StatelessWidget {
  final ValueChanged onChanged;
  const SearchBox({
    super.key,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: kSecondaryColor.withOpacity(0.32),
          )),
      child: TextField(
        onChanged: onChanged,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: SvgPicture.asset("assets/assets9/icons/search.svg"),
          hintText: "Search Here",
          hintStyle: const TextStyle(color: kSecondaryColor),
        ),
      ),
    );
  }
}
