import 'package:flutter/material.dart';

class CategorySearch extends StatelessWidget {
  const CategorySearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.infinity,
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromRGBO(255, 255, 255, 1),
            hintText: "Search",
            hintStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 17,
                color: Color.fromRGBO(149, 134, 168, 1)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(27),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.all(6),
              child: Image.asset(
                "assets/assets11/icons/search.png",
              ),
            )),
      ),
    );
  }
}
