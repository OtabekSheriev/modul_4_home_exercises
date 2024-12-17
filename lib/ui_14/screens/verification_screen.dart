import 'package:flutter/material.dart';

import 'package:modul_4_home_exercises/ui_14/widgets/general_bottom_nav.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/next_button.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/otp_code.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          iconSize: 20,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Center(
          child: Column(
            children: [
              const Text(
                "OTP Verification",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    fontFamily: "SF UI Display"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Please check your email www.uihut@gmail.com",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  fontFamily: "SF UI Display",
                  color: Colors.grey,
                ),
              ),
              const Text(
                "to see the verification code",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 17,
                  fontFamily: "SF UI Display",
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "OTP Code",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 24,
                    fontFamily: "SF UI Display",
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OTPCode(
                    text: "8",
                  ),
                  OTPCode(
                    text: "6",
                  ),
                  OTPCode(
                    text: "9",
                  ),
                  OTPCode(
                    text: "5",
                  ),
                ],
              ),
              const SizedBox(height: 40),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const GeneralBottomNav();
                  }));
                },
                child: const NextButton(
                  text: "Verify",
                  fontFamily: "SF UI Display",
                ),
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Resend code to",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      fontFamily: "SF UI Display",
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    "01:26",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      fontFamily: "SF UI Display",
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
