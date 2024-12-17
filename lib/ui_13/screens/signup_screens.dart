import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_13/screens/home_screen.dart';
import 'package:modul_4_home_exercises/ui_13/widgets/form_field.dart';

class SignupScreens extends StatelessWidget {
  const SignupScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 66),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 43,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/assets13/images/eduVerse.png'),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                "Create a\nnew account",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    fontFamily: "Inter"),
              ),
              const SizedBox(height: 15),
              Container(
                width: 27,
                height: 3,
                decoration:
                    const BoxDecoration(color: Color.fromRGBO(65, 120, 243, 1)),
              ),
              const SizedBox(height: 45),
              const FormFeildText(
                  text: "Email or Phone number",
                  hintText: "Email or Phone number",
                  icons: Icon(
                    Icons.check,
                    color: Colors.green,
                  )),
              const SizedBox(height: 30),
              const FormFeildText(
                text: "Password",
                hintText: "Password",
                icons: Icon(Icons.visibility_off),
              ),
              const SizedBox(height: 30),
              const FormFeildText(
                text: "Confirm password",
                hintText: "Confirm password",
                icons: Icon(Icons.visibility_off),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Checkbox(
                    value: true,
                    onChanged: null,
                  ),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                            text:
                                "By creating an account, If you agree to our\n",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                fontFamily: 'Inter')),
                        TextSpan(
                          text: "Term and Conditions",
                          style: TextStyle(
                              color: Color.fromRGBO(27, 8, 218, 1),
                              fontWeight: FontWeight.w400,
                              fontSize: 14,
                              fontFamily: 'Inter'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 40),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(27, 8, 218, 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Center(
                  child: Text(
                    "Create Account",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: "Inter",
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const HomeScreen();
                  }));
                },
                child: Center(
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: "Already have an account? ",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: "Log in",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        fontFamily: 'Inter',
                        color: Color.fromRGBO(27, 8, 218, 1),
                      ),
                    )
                  ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
