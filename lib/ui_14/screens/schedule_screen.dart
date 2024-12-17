import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/popular_places_screen.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/schedule_container.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/schedule_rich_text.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const SizedBox(height: 36),
            AppBarWidget(
              container: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 165, 164, 164)
                        .withOpacity(.1)),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 17,
                ),
              ),
              text: "Schedule",
              colortext: Colors.black,
              container2: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 165, 164, 164)
                        .withOpacity(.1)),
                child: const Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.black,
                  size: 24,
                ),
              ),
            ),
            const SizedBox(height: 40),
            Container(
              padding: const EdgeInsets.all(10),
              height: 158,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 2),
                    blurRadius: 20,
                    color: Color.fromARGB(255, 245, 241, 241),
                  ),
                ],
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "22 October",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 22,
                          fontFamily: "SF UI Display",
                          color: Colors.black,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 17,
                      ),
                      SizedBox(width: 20),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 17,
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ScheduleRichText(
                        text1: " S\n",
                        text2: "18",
                      ),
                      ScheduleRichText(
                        text1: " M\n",
                        text2: "19",
                      ),
                      ScheduleRichText(
                        text1: " T\n",
                        text2: "20",
                      ),
                      ScheduleRichText(
                        text1: " W\n",
                        text2: "21",
                      ),
                      ScheduleRichText(
                        text1: " T\n",
                        text2: "22",
                      ),
                      ScheduleRichText(
                        text1: " F\n",
                        text2: "23",
                      ),
                      ScheduleRichText(
                        text1: " S\n",
                        text2: "24",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "My Schedule",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                    fontFamily: "SF UI Display",
                    color: Colors.black,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return PopularPlacesScreen();
                    }));
                  },
                  child: const Text(
                    "View all",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      fontFamily: "SF UI Display",
                      color: Color.fromRGBO(13, 110, 253, 1),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView(
                children: const [
                  ScheduleContainer(
                    image: "assets/assets14/images/homeimage1.jpg",
                    text1: "Niladri Reservoir",
                    text2: "Tekergat, Sunamgnj",
                  ),
                  SizedBox(height: 30),
                  ScheduleContainer(
                    image: "assets/assets14/images/detailimage5.jpg",
                    text1: "High Rech Park",
                    text2: "Zeero Point, Sylhet",
                  ),
                  SizedBox(height: 30),
                  ScheduleContainer(
                    image: "assets/assets14/images/homeimage1.jpg",
                    text1: "Darma Reservoir",
                    text2: "Darma, Kuningan",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
