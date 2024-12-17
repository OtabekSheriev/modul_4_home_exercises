import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/view_screen.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/detail_images.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/detail_line_one.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/detail_line_two.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/next_button.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 480,
              child: Image.asset(
                "assets/assets14/images/homeimage1.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
              child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 56),
                child: AppBarWidget(
                  text: "Details",
                  colortext: Colors.white,
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
                  container2: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 81, 81, 81)
                            .withOpacity(.3)),
                    child: const Icon(
                      Icons.bookmark_outline,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        height: 6,
                        width: 36,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.4),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    const SizedBox(height: 25),
                    const DetailLineOne(),
                    const SizedBox(height: 25),
                    const DetailLineTwo(),
                    const SizedBox(height: 25),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        DetailImages(
                          image: "assets/assets14/images/detailimage1.jpg",
                          text: '',
                        ),
                        DetailImages(
                          image: "assets/assets14/images/detailimage2.jpg",
                          text: '',
                        ),
                        DetailImages(
                          image: "assets/assets14/images/detailimage3.jpg",
                          text: '',
                        ),
                        DetailImages(
                          image: "assets/assets14/images/detailimage4.jpg",
                          text: '',
                        ),
                        DetailImages(
                          image: "assets/assets14/images/detailimage5.jpg",
                          text: '+16',
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    const Text(
                      "About Destination",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 24,
                        fontFamily: "SF UI Display",
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 10),
                    RichText(
                      maxLines: 4,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                              text:
                                  "You will get a complete travel package on the beaches.Packages in the form of airline tickets, recommended Hotel rooms, Transportion, Have you ever been on holiday to Greek ETC...",
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15,
                                  fontFamily: "SF UI Display",
                                  color: Colors.grey,
                                  height: 1.5)),
                          TextSpan(
                              text: "Read more",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  fontFamily: "SF UI Display",
                                  color: Color.fromRGBO(255, 112, 41, 1)))
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return ViewScreen();
                          }));
                        },
                        child: NextButton(
                            text: "Book Now", fontFamily: "SF UI Display"))
                  ],
                ),
              )
            ],
          ))
        ],
      ),
    );
  }
}
