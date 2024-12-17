import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';

class FavouritePlacesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> places = [
    {
      'name': 'Niladri Reservoir',
      'location': 'Tekergat, Sunamgnj',
      'image': 'assets/assets14/images/viewScreenImage.jpg'
    },
    {
      'name': 'Casa Las Tortugas',
      'location': 'Av Damero, Mexico',
      'image': 'assets/assets14/images/popularplace1.jpg'
    },
    {
      'name': 'AoNang Villa Resort',
      'location': 'Bastola, Islampur',
      'image': 'assets/assets14/images/popularplace2.jpg'
    },
    {
      'name': 'Rangauti Resort',
      'location': 'Sylhet, Airport Road',
      'image': 'assets/assets14/images/popularimage3.jpg'
    },
    {
      'name': 'Kachura Resort',
      'location': 'Vellima Island',
      'image': 'assets/assets14/images/popularplace1.jpg'
    },
    {
      'name': 'Shakardu Resort',
      'location': 'Shakartu Pakistan',
      'image': 'assets/assets14/images/favouriteplace.jpg'
    },
  ];
  FavouritePlacesScreen({super.key});

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
              text: "Favourite Places",
              colortext: Colors.black,
              container2: Container(),
            ),
            const SizedBox(height: 40),
            const Text(
              "Favourite Places",
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
                      height: 220,
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
                              Container(
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
                              Positioned(
                                right: 10,
                                top: 10,
                                child: Container(
                                  height: 26,
                                  width: 26,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: const Color.fromARGB(
                                              255, 213, 210, 210)
                                          .withOpacity(.4)),
                                  child: const Icon(
                                    Icons.favorite_border_outlined,
                                    color: Colors.red,
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
