import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/star_icon.dart';

class HomeContainer extends StatelessWidget {
  final String text;
  final String text2;
  final String image;
  const HomeContainer({
    super.key,
    required this.text,
    required this.text2,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 286,
      height: 404,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 16,
                color: Color(0xFFD3D3D3).withOpacity(.10)),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 286,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(image), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        fontFamily: "SF UI Display",
                        color: Colors.black,
                      ),
                    ),
                    const StarIcon(
                      textcolor: Colors.black,
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.location_on_outlined,
                      color: Colors.grey,
                    ),
                    Text(
                      text2,
                      style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 17,
                        fontFamily: "SF UI Display",
                        color: Colors.grey,
                      ),
                    ),
                    Image(
                        image:
                            AssetImage("assets/assets14/icons/personicons.png"))
                  ],
                ),
                const SizedBox(width: 10),
              ],
            ),
            Positioned(
                right: 10,
                top: 10,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.bookmark_outline,
                      color: Colors.grey,
                    )))
          ],
        ),
      ),
    );
  }
}
