import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';

class SearchScreen extends StatelessWidget {
  final List<Map<String, dynamic>> places = [
    {
      'name': 'Niladri Reservoir',
      'location': 'Tekergat, Sunamgnj',
      'price': 459,
      'image': 'assets/assets14/images/viewScreenImage.jpg'
    },
    {
      'name': 'Casa Las Tortugas',
      'location': 'Av Damero, Mexico',
      'price': 894,
      'image': 'assets/assets14/images/popularplace1.jpg'
    },
    {
      'name': 'AoNang Villa Resort',
      'location': 'Bastola, Islampur',
      'price': 761,
      'image': 'assets/assets14/images/popularplace2.jpg'
    },
    {
      'name': 'Rangauti Resort',
      'location': 'Sylhet Airport Road',
      'price': 857,
      'image': 'assets/assets14/images/popularimage3.jpg'
    },
    {
      'name': 'Kachura Resort',
      'location': 'Vellima, Island',
      'price': 858,
      'image': 'assets/assets14/images/searchimage1.jpg'
    },
    {
      'name': 'Shakardy Resort',
      'location': 'Shakartu, Pakistan',
      'price': 846,
      'image': 'assets/assets14/images/searchimage2.jpg'
    },
    {
      'name': 'Rangauti Resort',
      'location': 'Sylhet Airport Road',
      'price': 857,
      'image': 'assets/assets14/images/popularimage3.jpg'
    },
    {
      'name': 'Rangauti Resort',
      'location': 'Sylhet Airport Road',
      'price': 857,
      'image': 'assets/assets14/images/popularimage3.jpg'
    },
  ];
  SearchScreen({super.key});

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
              text: "Search",
              colortext: Colors.black,
              container2: Container(
                child: const Text(
                  'Cancel',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    fontFamily: "SF UI Display",
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search, size: 26),
                    prefixIconColor: Colors.grey,
                    hintText: "Search Places",
                    hintStyle: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      fontFamily: "SF UI Display",
                      color: Colors.grey,
                    ),
                    suffixIcon: const Icon(Icons.mic_outlined, size: 30),
                    suffixIconColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none),
                    fillColor: Colors.grey.shade100,
                    filled: true),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              "Search Places",
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
                      height: 250,
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
