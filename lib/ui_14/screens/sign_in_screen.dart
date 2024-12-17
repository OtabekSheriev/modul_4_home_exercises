import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/forgot_password_screen.dart';
import 'package:modul_4_home_exercises/ui_14/screens/sign_up_screen.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/next_button.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/sign_in_feild.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                  "Sign in now",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 30,
                      fontFamily: "SF UI Display"),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Please sign in to continue our app",
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
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const ForgotPasswordScreen();
                      }));
                    },
                    child: const Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        fontFamily: "SF UI Display",
                        color: const Color.fromRGBO(13, 110, 253, 1),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const SignUpScreen();
                      }));
                    },
                    child: const NextButton(
                      text: "Sign In",
                      fontFamily: "SF UI Display",
                    )),
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
                      TextSpan(text: "Don't have an account? "),
                      TextSpan(
                        text: "Sign up\n",
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
                const SizedBox(height: 70),
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
