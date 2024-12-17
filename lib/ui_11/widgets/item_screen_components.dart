import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_11/screens/checkout_scroll_screen.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/card_box.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/favorite_icon.dart';

class ItemScreenComponents extends StatelessWidget {
  const ItemScreenComponents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 45),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                "Boston Lettuce",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 30,
                  color: Color.fromRGBO(45, 12, 87, 1),
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: "1.10 ",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Color.fromRGBO(45, 12, 87, 1),
                      ),
                    ),
                    TextSpan(
                      text: "€ / piece",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 24,
                        color: Color.fromRGBO(149, 134, 168, 1),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "~ 150 gr / piece",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Color.fromRGBO(6, 190, 119, 1),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Spain",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Color.fromRGBO(45, 12, 87, 1),
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                "Lettuce is an annual plant of the daisy family, Asteraceae. It is most often grown as a leaf vegetable, but sometimes for its stem and seeds. Lettuce is most often used for salads, although it is also seen in other kinds of food, such as soups, sandwiches and wraps; it can also be grilled.",
                maxLines: 7,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  color: Color.fromRGBO(149, 134, 168, 1),
                ),
              ),
              const SizedBox(height: 60),
              Row(
                children: <Widget>[
                  const FavoriteIcon(
                    height: 56,
                    width: 78,
                  ),
                  const SizedBox(width: 18),
                  CardBox(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const CheckoutScrollScreen();
                          },
                        ),
                      );
                    },
                    height: 56,
                    width: 275,
                    text: "ADD TO CART",
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
