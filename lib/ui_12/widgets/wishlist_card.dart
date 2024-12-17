import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_12/bottom_sheet_card.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({
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
                      const BottomSheetCard(
                        picture: "assets/assets12/images/Berkely.png",
                        title: "Berkely\n",
                        text: "Style #36252 0YK0G 1000\n",
                        text2: "REMOVE",
                      ),
                      const Divider(
                        height: 1,
                        thickness: 3,
                        color: Colors.black,
                        endIndent: 169,
                        indent: 124,
                      ),
                      const SizedBox(height: 20),
                      const Divider(
                        thickness: 2,
                        color: Colors.black,
                      ),
                      const SizedBox(height: 25),
                      const BottomSheetCard(
                        title: "Capucinus\n",
                        picture: "assets/assets12/images/Capucinus.png",
                        text: "Style #36252 0YK0G 1000\n",
                        text2: "REMOVE",
                      ),
                      const Divider(
                        height: 1,
                        thickness: 3,
                        color: Colors.black,
                        endIndent: 169,
                        indent: 124,
                      ),
                      const SizedBox(height: 40),
                      Container(
                        height: 43,
                        width: 190,
                        decoration: const BoxDecoration(color: Colors.black),
                        child: const Center(
                          child: Text(
                            "ADD ALL TO CART",
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
      icon: SvgPicture.asset("assets/assets12/icons/favourite.svg"),
    );
  }
}
