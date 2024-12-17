import 'package:flutter/material.dart';

class ScheduleContainer extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  const ScheduleContainer({
    super.key,
    required this.image,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 20,
            color: Color.fromARGB(255, 245, 241, 241),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.grey,
                    size: 18,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "26 January 2022",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: "SF UI Display",
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Text(
                text1,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 19,
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
                  const SizedBox(width: 5),
                  Text(
                    text2,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      fontFamily: "SF UI Display",
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios,
            size: 18,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
