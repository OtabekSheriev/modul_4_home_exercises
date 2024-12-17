import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_12/bottom_sheet_card.dart';
import 'package:modul_4_home_exercises/ui_12/screens/search_screen.dart';
import 'package:modul_4_home_exercises/ui_12/ui_12.dart';
import 'package:modul_4_home_exercises/ui_12/widgets/wishlist_card.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 11, vertical: 20),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 181, 177, 177),
            blurRadius: 30,
            offset: Offset(0, 20),
          ),
        ],
      ),
      child: Stack(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(69),
          child: BottomNavigationBar(
            iconSize: 70,
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return HomeScreen();
                        }));
                      },
                      child:
                          SvgPicture.asset("assets/assets12/icons/home.svg")),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SearchScreen();
                    }));
                  },
                  child: SvgPicture.asset(
                    "assets/assets12/icons/search.svg",
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: WishlistCard(),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: BasketIconCart(),
                label: '',
              ),
            ],
          ),
        ),
        Positioned(
          right: 18,
          top: 14,
          child: Container(
            height: 22,
            width: 22,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
            child: const Text(
              "2",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        )
      ]),
    );
  }
}

class BasketIconCart extends StatelessWidget {
  const BasketIconCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              double screenHeight = MediaQuery.of(context).size.height;
              return Container(
                height: screenHeight * 0.71,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color.fromRGBO(255, 255, 255, 0.8),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 11, horizontal: 30),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Divider(
                          height: 4,
                          thickness: 4,
                          color: Colors.black,
                          endIndent: 125,
                          indent: 125,
                        ),
                      ),
                      const SizedBox(height: 80),
                      const Stack(
                        children: [
                          const BottomSheetCard(
                            picture: "assets/assets12/images/Artsy.png",
                            title: "Artsy\n",
                            text: "Style #36252 0YK0G 1000\n",
                            text2: "\$564",
                            weight: FontWeight.w900,
                            size: 20,
                          ),
                          Positioned(
                            bottom: 10,
                            child: ProductCounter(
                              number: '1',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Divider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 25),
                      const Stack(
                        children: [
                          BottomSheetCard(
                            picture: "assets/assets12/images/Monogram.png",
                            title: "Monogram\n",
                            text: "Style #9242 0YK0G 211\n",
                            text2: "\$1638",
                            weight: FontWeight.w900,
                            size: 20,
                          ),
                          Positioned(
                              bottom: 10, child: ProductCounter(number: '2'))
                        ],
                      ),
                      const SizedBox(height: 40),
                      Container(
                        height: 43,
                        width: 190,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: const Center(
                          child: Text(
                            "PROCEED TO BUY",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
      icon: SvgPicture.asset("assets/assets12/icons/basket.svg"),
    );
  }
}

class ProductCounter extends StatelessWidget {
  final String number;
  const ProductCounter({
    super.key,
    required this.number,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 27,
      width: 98,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 32,
            height: 27,
            decoration: const BoxDecoration(color: Colors.black),
            child: const Text(
              "-",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 32,
            height: 27,
            decoration: const BoxDecoration(color: Colors.white),
            child: Text(
              number,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 32,
            height: 27,
            decoration: const BoxDecoration(color: Colors.black),
            child: const Text(
              "+",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
