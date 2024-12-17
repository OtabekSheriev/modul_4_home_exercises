import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_11/screens/splash_screen.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/payment_search.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/payment_search2.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 245, 245, 1),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 62),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Image(
                      image: AssetImage(
                        "assets/assets11/icons/chevron-left.png",
                      ),
                      color: Color.fromRGBO(45, 12, 87, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Credit/Debit Card",
                    style: TextStyle(
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(45, 12, 87, 1),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Image(
                    image: AssetImage("assets/assets11/images/Base.png"),
                  ),
                  const SizedBox(height: 25),
                  const Center(
                    child: const Image(
                        image: AssetImage(
                            "assets/assets11/images/Take a photo icon.png")),
                  ),
                  const SizedBox(height: 20),
                  const PaymentSearch(
                    title: 'Enter text here',
                    text: "Name on card",
                  ),
                  const SizedBox(height: 20),
                  const PaymentSearch2(
                    text: "Card number",
                    image: "assets/assets11/images/mc_symbol.small.png",
                    title: 'Enter number here',
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width * .4,
                        child: const PaymentSearch(
                          title: 'Enter date here',
                          text: "Expiry date",
                        ),
                      ),
                      SizedBox(
                        width: size.width * .4,
                        child: const PaymentSearch2(
                          text: "CVC",
                          image: "assets/assets11/images/Hint.png",
                          title: 'Enter number here',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const SplashScreen();
                          },
                        ),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 56,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(10, 207, 131, 1),
                          borderRadius: BorderRadius.circular(8)),
                      child: const Text(
                        "USE THIS CARD",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              const Positioned(
                top: 140,
                right: 40,
                child: Image(
                  image: AssetImage("assets/assets11/images/mc_symbol.png"),
                ),
              ),
              const Positioned(
                top: 210,
                left: 32,
                child: Text(
                  "4747 4747 4747 4747",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              const Positioned(
                top: 290,
                left: 32,
                child: Row(
                  children: [
                    Text(
                      "ALEXANDRA SMITH",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(width: 58),
                    Text(
                      "07/21",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
