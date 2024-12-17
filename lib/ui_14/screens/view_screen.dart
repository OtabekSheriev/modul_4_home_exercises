import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/next_button.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/star_icon.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/view_screen_container.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          "assets/assets14/images/viewScreenImage.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 56, left: 20, right: 20, bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppBarWidget(
                    container: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 81, 81, 81)
                              .withOpacity(.2)),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 17,
                      ),
                    ),
                    text: "View",
                    colortext: Colors.white,
                    container2: Container(),
                  ),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: ViewScreenContainer(
                      image: "assets/assets14/images/detailimage5.jpg",
                      text: "La-Hotel\n",
                      width: 190,
                    ),
                  ),
                  const SizedBox(height: 60),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: ViewScreenContainer(
                      image: "assets/assets14/images/viewScreenImage.jpg",
                      text: "Lemon Garden\n",
                      width: 230,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 25,
                    ),
                    height: 225,
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.6),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Niladri Reservoir",
                              style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                fontFamily: "SF UI Display",
                                color: Colors.white,
                              ),
                            ),
                            StarIcon(
                              textcolor: Colors.white,
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Tekergat, Sunamgnj",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                fontFamily: "SF UI Display",
                                color: Colors.white,
                              ),
                            ),
                            Spacer(),
                            Image(
                              image: AssetImage(
                                  "assets/assets14/icons/personicons.png"),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.watch_later_outlined,
                              color: Colors.white,
                            ),
                            SizedBox(width: 5),
                            Text(
                              "45 Minutes",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 17,
                                fontFamily: "SF UI Display",
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        NextButton(
                            text: "See On The Map", fontFamily: "SF UI Display")
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
