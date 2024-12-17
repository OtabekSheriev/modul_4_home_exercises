import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_11/screens/categories_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(162, 89, 255, 1),
                    Color.fromRGBO(111, 18, 231, 0.8),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 0,
              child: ClipPath(
                clipper: CustomClipperShape(),
                child: Container(
                  width: 250,
                  height: 500,
                  decoration: const BoxDecoration(
                      color: Color.fromRGBO(111, 18, 231, 0.8)),
                ),
              ),
            ),
            const Positioned(
              left: 20,
              top: 63,
              child: Image(
                image: AssetImage("assets/assets11/images/LOGO.png"),
              ),
            ),
            Positioned(
              top: 312,
              child: Container(
                padding: const EdgeInsets.all(20),
                width: 414,
                height: 584,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(246, 245, 245, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 64),
                      child: Container(
                        width: 104,
                        height: 104,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/assets11/icons/Icon.png",
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Non-Contact\n   Deliveries",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(45, 12, 87, 1),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'When placing an order, select the option\n"Contactless delivery" and the courier will leave\nyour order at the door.',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        color: Color.fromRGBO(149, 134, 168, 1),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const CategoriesScreen();
                            },
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(11, 206, 131, 1),
                        fixedSize: const Size(374, 56),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "ORDER NOW",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          color: Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    SvgPicture.asset("assets/assets11/images/Text.svg")
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipperShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(
        size.width * 0.50, size.height * 0.10, size.width, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
