import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/next_button.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/sign_in_feild.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Center(
            child: Column(
              children: [
                const Text(
                  "Sign Up now",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      fontFamily: "SF UI Display"),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Please fill the details and create account",
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
                  text: "Name",
                ),
                const SizedBox(height: 30),
                const SignInFeild(
                  obscureText: false,
                  text: "Email",
                ),
                const SizedBox(height: 30),
                Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 247, 246, 246),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        fontFamily: 'SF UI Display',
                        color: Colors.grey,
                      ),
                      suffixIcon: const Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password must be 8 character",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: "SF UI Display",
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const NextButton(
                  text: "Sign Up",
                  fontFamily: "SF UI Display",
                ),
                const SizedBox(height: 40),
                RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    style: TextStyle(
                      height: 3,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: "SF UI Display",
                      color: Color.fromRGBO(112, 123, 129, 1),
                    ),
                    children: [
                      TextSpan(text: "Already have an account "),
                      TextSpan(
                        text: "Sign in\n",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: "SF UI Display",
                          color: const Color.fromRGBO(13, 110, 253, 1),
                        ),
                      ),
                      TextSpan(
                        text: "Or connect",
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/assets14/images/facebook.png"),
                    const SizedBox(width: 20),
                    Image.asset("assets/assets14/images/instagram.png"),
                    const SizedBox(width: 20),
                    Image.asset("assets/assets14/images/twitter.png"),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
