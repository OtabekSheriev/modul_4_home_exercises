import 'package:flutter/material.dart';

class HomeBarContainer extends StatelessWidget {
  const HomeBarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 44,
          width: 118,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: const Color.fromARGB(255, 240, 237, 237),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset("assets/assets14/icons/avataricon.png"),
              const SizedBox(width: 10),
              const Text(
                "Otabek",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "SF UI Display",
                    color: Colors.black),
              ),
            ],
          ),
        ),
        Container(
          height: 44,
          width: 44,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: const Color.fromARGB(255, 240, 237, 237),
          ),
          child: const Icon(
            Icons.notifications_outlined,
            size: 24,
          ),
        )
      ],
    );
  }
}
