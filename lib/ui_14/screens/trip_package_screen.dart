import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';

class TripPackageScreen extends StatelessWidget {
  final List<Map<String, dynamic>> places = [
    {
      'name': 'Santorini Island',
      'date': '16 July-28 July',
      'rating': 4.8,
      'price': 820,
      'image': 'assets/assets14/images/trippackage1.jpg',
      'number': 24
    },
    {
      'name': 'Bukita Rayandro',
      'date': '20 Sep-29 Sep',
      'rating': 4.3,
      'price': 820,
      'image': 'assets/assets14/images/trippackage2.jpg',
      'number': 24
    },
    {
      'name': 'Cluster Omega',
      'date': '14 Nov-22 Nov',
      'rating': 4.9,
      'price': 942,
      'image': 'assets/assets14/images/trippackage3.jpg',
      'number': 26
    },
    {
      'name': 'Shajek Bandorban',
      'date': '12 Dec-18 Dec',
      'rating': 4.5,
      'price': 860,
      'image': 'assets/assets14/images/trippackage4.jpg',
      'number': 27
    },
  ];
  TripPackageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              text: "Popular Package",
              colortext: Colors.black,
              container2: Container(),
            ),
            const SizedBox(height: 40),
            const Text(
              "All Popular Trip Package",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                fontFamily: "SF UI Display",
                color: Colors.black,
              ),
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                  crossAxisCount: 1,
                  itemCount: places.length,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  itemBuilder: (context, index) {
                    final place = places[index];
                    return Container(
                      padding: const EdgeInsets.all(16),
                      width: double.infinity,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 2),
                            blurRadius: 20,
                            color: Color.fromARGB(255, 245, 241, 241),
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 105,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        place['image'],
                                      ),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              const SizedBox(width: 15),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    place['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                      fontFamily: "SF UI Display",
                                      color: Colors.black,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.calendar_month_rounded,
                                        color: Colors.grey,
                                        size: 21,
                                      ),
                                      const SizedBox(width: 5),
                                      Text(
                                        place['date'].toString(),
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: "SF UI Display",
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      RatingBar.builder(
                                          initialRating: 3,
                                          itemSize: 18,
                                          itemCount: 3,
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          }),
                                      const SizedBox(width: 5),
                                      Text(
                                        place['rating'].toString(),
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16,
                                            fontFamily: "SF UI Display",
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(
                                          "assets/assets14/icons/personsicon2.png"),
                                      const SizedBox(width: 5),
                                      Text(
                                        '${place['number']} Person Joined',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                          fontFamily: "SF UI Display",
                                          color: Colors.grey,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Positioned(
                            top: 7,
                            right: 0,
                            child: Container(
                              height: 30,
                              width: 48,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color.fromRGBO(13, 110, 253, 1),
                              ),
                              child: Center(
                                child: Text(
                                  '\$${place['price']}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    fontFamily: "SF UI Display",
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  staggeredTileBuilder: (index) => StaggeredTile.fit(1)),
            )
          ],
        ),
      ),
    );
  }
}
