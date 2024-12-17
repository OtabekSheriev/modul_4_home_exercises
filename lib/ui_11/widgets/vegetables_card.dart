import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/card_box.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/favorite_icon.dart';

class VegetablesCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String measure;

  const VegetablesCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.measure,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 128,
            width: 177,
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
                borderRadius: BorderRadius.circular(8)),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color.fromRGBO(45, 12, 87, 1),
                ),
              ),
              const SizedBox(height: 12),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$price ",
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Color.fromRGBO(45, 12, 87, 1),
                      ),
                    ),
                    TextSpan(
                      text: "€ / $measure",
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromRGBO(149, 134, 168, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  const FavoriteIcon(
                    height: 40,
                    width: 78,
                  ),
                  const SizedBox(width: 20),
                  CardBox(
                    press: () {},
                    width: 78,
                    height: 40,
                    text: '',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
