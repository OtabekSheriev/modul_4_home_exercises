import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/types_card.dart';

class Types extends StatefulWidget {
  const Types({
    super.key,
  });

  @override
  State<Types> createState() => _TypesState();
}

class _TypesState extends State<Types> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    List<String> types = [
      "Cabbage and lettuce (14)",
      "Cucumbers and tomatoes (20)",
    ];
    List<String> types2 = [
      "Onions and garlic (8)",
      "Peppers (7)",
      "Potatoes and carrots (11)"
    ];

    return Column(
      children: [
        SizedBox(
          height: 36,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: types.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: TypesCard(
                type: types[index],
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 36,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: types2.length,
            itemBuilder: (context, index) {
              int overallIndex = types.length + index;
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = overallIndex;
                  });
                },
                child: TypesCard(
                  type: types2[index],
                  isSelected: selectedIndex == overallIndex,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
