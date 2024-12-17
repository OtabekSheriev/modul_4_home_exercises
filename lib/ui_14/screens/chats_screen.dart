import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/chat_buble.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 36),
            Stack(
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
                  text: 'Sajib Rahman',
                  colortext: Colors.black,
                  container2: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color.fromARGB(255, 165, 164, 164)
                            .withOpacity(.1)),
                    child: const Icon(
                      Icons.call_outlined,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -6,
                  left: MediaQuery.of(context).size.width * 0.36,
                  child: const Text(
                    "Active now",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: "SF UI Display",
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Text(
                "Today",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  fontFamily: "SF UI Display",
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Expanded(
              child: ListView(
                children: const [
                  ChatBuble(
                    message: "Hello!",
                    time: "9:24",
                    isSentByMe: true,
                    iconColor: true,
                  ),
                  ChatBuble(
                    message:
                        "Thank you very mouch for your\ntraveling, we really like the\napartments. We will stay here for\nanather 5 days...",
                    time: "9:30",
                    isSentByMe: true,
                    iconColor: false,
                  ),
                  ChatBuble(
                    message: "Hello!",
                    time: "9:34",
                    isSentByMe: false,
                    iconColor: true,
                  ),
                  ChatBuble(
                    message: "I’m very glab you like it👍",
                    time: "9:35",
                    isSentByMe: false,
                    iconColor: true,
                  ),
                  ChatBuble(
                    message:
                        "We are arriving today at 01:45, will\nsomeone be at home?",
                    time: "9:37",
                    isSentByMe: false,
                    iconColor: true,
                  ),
                  ChatBuble(
                    message: "I will be at home",
                    time: "9:24",
                    isSentByMe: true,
                    iconColor: false,
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: const Icon(
                            Icons.attach_file_rounded,
                            size: 26,
                          ),
                          suffixIconColor: Colors.grey,
                          hintText: "Type your message",
                          hintStyle: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            fontFamily: "SF UI Display",
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Colors.grey.withOpacity(.1),
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15)),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Container(
                    height: 50,
                    decoration: const BoxDecoration(
                        color: Colors.blue, shape: BoxShape.circle),
                    child: Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic_outlined,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
