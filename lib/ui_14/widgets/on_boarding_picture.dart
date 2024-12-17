import 'package:flutter/material.dart';

class OnBoardingPicture extends StatelessWidget {
  final String picture;
  const OnBoardingPicture({
    super.key,
    required this.picture,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 2,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(picture), fit: BoxFit.cover),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 56, right: 25),
        child: Text(
          "Skip",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            fontFamily: 'Geometr415 Blk BT',
            color: Color.fromRGBO(202, 234, 255, 1),
          ),
          textAlign: TextAlign.right,
        ),
      ),
    );
  }
}
