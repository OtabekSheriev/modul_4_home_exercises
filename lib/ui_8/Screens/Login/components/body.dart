import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_8/Components/background.dart';
import 'package:modul_4_home_exercises/ui_8/Components/rounded_button.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/Login/components/already_have_an_account.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/Login/components/rounded_input_field.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/Login/components/rounded_password_field.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/SignUpScreen/sign_up_screen.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "LOGIN",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.03),
          SvgPicture.asset(
            "assets/assets8/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(height: size.height * 0.03),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          SizedBox(height: size.height * 0.03),
          AlreadyHaveAnAccountCheck(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SignUpScreen();
                  },
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
