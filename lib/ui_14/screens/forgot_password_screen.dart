import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/verification_screen.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/next_button.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/sign_in_feild.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                "Forgot password",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 30,
                    fontFamily: "SF UI Display"),
              ),
              const SizedBox(height: 20),
              const Text(
                "Enter your email account to reset",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  fontFamily: "SF UI Display",
                  color: Colors.grey,
                ),
              ),
              const Text(
                "your password",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  fontFamily: "SF UI Display",
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 40),
              const SignInFeild(
                obscureText: false,
                text: "Email",
              ),
              const SizedBox(height: 40),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              content: SizedBox(
                                height: 200,
                                child: Column(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(context,
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return const VerificationScreen();
                                        }));
                                      },
                                      child: Container(
                                        height: 48,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Color.fromRGBO(13, 110, 253, 1),
                                        ),
                                        child: const Image(
                                            image: AssetImage(
                                                "assets/assets14/icons/Email.png")),
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    const Text(
                                      "Check your email",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        fontFamily: "SF UI Display",
                                        color: Colors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                      "We have sent password recovery instructions to your email",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        fontFamily: "SF UI Display",
                                        color: Colors.grey,
                                      ),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ));
                  },
                  child: NextButton(
                      text: 'Reset Password', fontFamily: "SF UI Display"))
            ],
          ),
        ),
      ),
    );
  }
}
