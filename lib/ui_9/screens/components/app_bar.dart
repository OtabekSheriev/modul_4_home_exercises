import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_9/constants.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      onPressed: () {},
      icon: SvgPicture.asset("assets/assets9/icons/menu.svg"),
    ),
    title: Center(
      child: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold),
          children: const [
            TextSpan(
              text: "Punk",
              style: TextStyle(color: kPrimaryColor),
            ),
            TextSpan(
              text: "Food",
              style: TextStyle(color: kSecondaryColor),
            ),
          ],
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        onPressed: () {},
        icon: SvgPicture.asset("assets/assets9/icons/notification.svg"),
      ),
    ],
  );
}
