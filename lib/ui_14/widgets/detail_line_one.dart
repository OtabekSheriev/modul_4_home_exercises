import 'package:flutter/material.dart';

class DetailLineOne extends StatelessWidget {
  const DetailLineOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: "Niladri Reservoir\n",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  fontFamily: "SF UI Display",
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "Tekergat,Sunamgnj ",
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 17,
                    fontFamily: "SF UI Display",
                    color: Colors.grey,
                    height: 1.7),
              ),
            ],
          ),
        ),
        const CircleAvatar(
          radius: 27,
          foregroundImage: AssetImage("assets/assets14/images/personimage.png"),
        )
      ],
    );
  }
}
