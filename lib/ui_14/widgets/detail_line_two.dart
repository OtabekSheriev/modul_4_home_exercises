import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/star_icon.dart';

class DetailLineTwo extends StatelessWidget {
  const DetailLineTwo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.grey,
            ),
            Text(
              "Tekergat ",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                fontFamily: "SF UI Display",
                color: Colors.grey,
              ),
            )
          ],
        ),
        const Row(
          children: [
            StarIcon(
              textcolor: Colors.black,
            ),
            Text(
              "(2498)",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                fontFamily: "SF UI Display",
                color: Colors.grey,
              ),
            )
          ],
        ),
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "\$59/",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  fontFamily: "SF UI Display",
                  color: Color.fromRGBO(13, 110, 253, 1),
                ),
              ),
              TextSpan(
                text: "Person",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  fontFamily: "SF UI Display",
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
