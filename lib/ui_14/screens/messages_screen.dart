import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/chats_screen.dart';
import 'package:modul_4_home_exercises/ui_14/screens/notification_screen.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';

class MessagesScreen extends StatelessWidget {
  final List<Map<String, dynamic>> messages = [
    {
      "name": "Sajib Rahman",
      "time": "09:46",
      "message": "Hi, John!👋 How are you doing?",
      "profileColor": Colors.yellow,
      "read": true,
      "image": "assets/assets14/images/messageimage1.png"
    },
    {
      "name": "Adom Shafi",
      "time": "08:42",
      "message": "typing...",
      "profileColor": Colors.grey,
      "read": false,
      "image": "assets/assets14/images/messageimage2.png"
    },
    {
      "name": "HR Rumen",
      "time": "Yesterday",
      "message": "Cool!😁 Let's meet at 18:00 near the traveling!",
      "profileColor": Colors.green,
      "read": false,
      "image": "assets/assets14/images/messageimage3.png"
    },
    {
      "name": "Anjelina",
      "time": "07:56",
      "message": "Hey, will you come to the party on Saturday?",
      "profileColor": Colors.red,
      "read": true,
      "image": "assets/assets14/images/messageimage4.png"
    },
    {
      "name": "Alexa Shorna",
      "time": "05:52",
      "message": "Thank you for coming! Your or...",
      "profileColor": Colors.green,
      "read": false,
      "image": "assets/assets14/images/messageimage5.png"
    },
  ];
  MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
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
                  text: 'Messages',
                  colortext: Colors.black,
                  container2: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 165, 164, 164)
                            .withOpacity(.1)),
                    child: const Icon(
                      Icons.more_vert,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Messages",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 22,
                        fontFamily: "SF UI Display",
                        color: Colors.black,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return NotificationScreen();
                          }));
                        },
                        icon: const Icon(
                          Icons.edit_note_rounded,
                          size: 30,
                        )),
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: TextFormField(
                      decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search, size: 30),
                          hintText: "Search for chats & messages",
                          focusColor: Colors.grey,
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            fontFamily: "SF UI Display",
                            color: Colors.grey,
                          ),
                          border: InputBorder.none)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[index];
                final listTile = ListTile(
                  minVerticalPadding: 15,
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(message["image"]),
                      ),
                      Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                                color: message['profileColor'],
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 2, color: Colors.white)),
                          ))
                    ],
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
                      if (message['read'])
                        const Icon(
                          Icons.check,
                          color: Colors.grey,
                          size: 20,
                        ),
                      if (!message['read'])
                        const Icon(
                          Icons.done_all,
                          color: Colors.green,
                          size: 20,
                        ),
                      const SizedBox(width: 8),
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
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: "SF UI Display",
                      color: index == 1 ? Colors.blue : Colors.grey,
                    ),
                  ),
                );
                return index == 0
                    ? InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const ChatsScreen();
                          }));
                        },
                        child: listTile,
                      )
                    : listTile;
              },
            ),
          ),
        ],
      ),
    );
  }
}
