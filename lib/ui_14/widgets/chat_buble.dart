import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
  final String message;
  final String time;
  final bool isSentByMe;
  final bool iconColor;
  const ChatBuble({
    super.key,
    required this.message,
    required this.time,
    required this.isSentByMe,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Column(
        crossAxisAlignment:
            isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 5),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: isSentByMe ? Colors.blue.shade50 : Colors.grey.shade100,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Text(
              message,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                fontFamily: "SF UI Display",
                color: Colors.black,
              ),
            ),
          ),
          Row(
            mainAxisAlignment:
                isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  fontFamily: "SF UI Display",
                  color: Colors.grey,
                ),
              ),
              const SizedBox(width: 5),
              Icon(
                Icons.done_all,
                size: 16,
                color: iconColor ? Colors.green : Colors.grey,
              )
            ],
          ),
        ],
      ),
    );
  }
}
