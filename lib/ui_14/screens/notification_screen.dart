import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  int? selectedIndex;
  final List<Map<String, dynamic>> messages = [
    {
      "name": "Super Offer",
      "time": "Sun,12:40pm",
      "message": "Get 60% off in our first booking",
      "image": "assets/assets14/images/notificationicon1.png"
    },
    {
      "name": "Super Offer",
      "time": "Mon,11:50pm",
      "message": "Get 60% off in our first booking",
      "image": "assets/assets14/images/notificationicon2.png"
    },
    {
      "name": "Super Offer",
      "time": "Tue,10:56pm",
      "message": "Get 60% off in our first booking",
      "image": "assets/assets14/images/notificationicon3.png"
    },
    {
      "name": "Super Offer",
      "time": "Wed,12:40pm",
      "message": "Get 60% off in our first booking",
      "image": "assets/assets14/images/notificationicon4.png"
    },
    {
      "name": "Super Offer",
      "time": "Fri,12:40pm",
      "message": "Get 60% off in our first booking",
      "image": "assets/assets14/images/notificationicon5.png"
    },
    {
      "name": "Super Offer",
      "time": "Sat,10:56pm",
      "message": "Get 60% off in our first booking",
      "image": "assets/assets14/images/notificationicon6.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20, top: 56),
            child: Column(
              children: [
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
                  text: 'Notification',
                  colortext: Colors.black,
                  container2: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Clear all",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        fontFamily: "SF UI Display",
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                NotificationRowText(),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final isSelected = selectedIndex == index;
                return InkWell(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    color: isSelected
                        ? const Color.fromRGBO(229, 244, 255, 1)
                        : Colors.white,
                    child: ListTile(
                      minVerticalPadding: 15,
                      leading: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(message["image"]),
                      ),
                      title: Row(
                        children: [
                          Text(
                            message['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              fontFamily: "SF UI Display",
                              color: Colors.black,
                            ),
                          ),
                          const Spacer(),
                          Text(
                            message['time'],
                            style: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 13,
                              fontFamily: "SF UI Display",
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(
                        message['message'],
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          fontFamily: "SF UI Display",
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationRowText extends StatelessWidget {
  const NotificationRowText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            "Recent",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              fontFamily: "SF UI Display",
              color: Colors.blue,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Earlier",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              fontFamily: "SF UI Display",
              color: Colors.black,
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Archieved",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
              fontFamily: "SF UI Display",
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
