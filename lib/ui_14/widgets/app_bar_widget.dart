import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final String text;
  final Color colortext;
  final Widget container;
  final Widget container2;
  const AppBarWidget({
    super.key,
    required this.container,
    required this.text,
    required this.colortext,
    required this.container2,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: container),
        Text(
          text,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 21,
              fontFamily: "SF UI Display",
              color: colortext),
        ),
        container2,
      ],
    );
  }
}
