import 'package:flutter/material.dart';

class TypesCard extends StatelessWidget {
  final String type;
  final bool isSelected;
  const TypesCard({super.key, required this.type, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(right: 15),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: isSelected
            ? const Color.fromRGBO(226, 203, 255, 1)
            : const Color.fromRGBO(255, 255, 255, 1),
      ),
      child: Row(
        children: [
          if (isSelected)
            const Icon(
              Icons.check,
              color: Color.fromARGB(255, 63, 5, 133),
            ),
          const SizedBox(width: 10),
          Text(
            type,
            style: TextStyle(
              color: isSelected
                  ? const Color.fromARGB(255, 63, 5, 133)
                  : const Color.fromRGBO(149, 134, 168, 1),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
