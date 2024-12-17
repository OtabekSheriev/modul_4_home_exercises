import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:modul_4_home_exercises/ui_14/screens/trip_package_screen.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';

class PopularPlacesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> places = [
    {
      'name': 'Niladri Reservoir',
      'location': 'Tekergat, Sunamgnj',
      'rating': 4.7,
      'price': 459,
      'image': 'assets/assets14/images/viewScreenImage.jpg'
    },
    {
      'name': 'Casa Las Tortugas',
      'location': 'Av Damero, Mexico',
      'rating': 4.8,
      'price': 894,
      'image': 'assets/assets14/images/popularplace1.jpg'
    },
    {
      'name': 'AoNang Villa Resort',
      'location': 'Bastola, Islampur',
      'rating': 4.3,
      'price': 761,
      'image': 'assets/assets14/images/popularplace2.jpg'
    },
    {
      'name': 'Rangauti Resort',
      'location': 'Sylhet Airport Road',
      'rating': 4.5,
      'price': 857,
      'image': 'assets/assets14/images/popularimage3.jpg'
    },
  ];
  PopularPlacesScreen({super.key});

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
              text: "Popular Places",
              colortext: Colors.black,
              container2: Container(),
            ),
            const SizedBox(height: 40),
            const Text(
              "All Popular Places",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
                fontFamily: "SF UI Display",
                color: Colors.black,
              ),
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                  crossAxisCount: 2,
                  itemCount: places.length,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  itemBuilder: (context, index) {
                    final place = places[index];
                    return Container(
                      padding: const EdgeInsets.all(16),
                      width: 171,
                      height: 260,
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return TripPackageScreen();
                                  }));
                                },
                                child: Container(
                                  height: 134,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                        image: AssetImage(
                                          place['image'],
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color:
                                          const Color.fromARGB(255, 73, 71, 71)
                                              .withOpacity(.3)),
                                  child: const Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Text(
                            place['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              fontFamily: "SF UI Display",
                              color: Colors.black,
                            ),
                          ),
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on_outlined,
                                color: Colors.grey,
                                size: 19,
                              ),
                              Text(
                                place['location'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
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
                                  itemSize: 16,
                                  itemCount: 3,
                                  itemBuilder: (context, _) => const Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                  onRatingUpdate: (rating) {
                                    print(rating);
                                  }),
                              Text(
                                place['rating'].toString(),
                              )
                            ],
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                              text: "\$${place['price']}",
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: "SF UI Display",
                                color: Colors.blue,
                              ),
                            ),
                            const TextSpan(
                              text: "/Person",
                              style: const TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: "SF UI Display",
                                color: Colors.grey,
                              ),
                            )
                          ]))
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
