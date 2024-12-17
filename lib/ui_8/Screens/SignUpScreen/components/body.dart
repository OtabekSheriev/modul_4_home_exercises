import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_8/Components/rounded_button.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/Login/components/already_have_an_account.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/Login/components/rounded_input_field.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/Login/components/rounded_password_field.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/Login/login_screen.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/SignUpScreen/components/background.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/SignUpScreen/components/or_divider.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/SignUpScreen/components/social_icon.dart';

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
            "SIGNUP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          SvgPicture.asset("assets/assets8/icons/signup.svg"),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () {},
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const LoginScreen();
                  },
                ),
              );
            },
          ),
          const OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SocialIcon(
                iconsrc: "assets/assets8/icons/facebook.svg",
                press: () {},
              ),
              SocialIcon(
                iconsrc: "assets/assets8/icons/twitter.svg",
                press: () {},
              ),
              SocialIcon(
                iconsrc: "assets/assets8/icons/google-plus.svg",
                press: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
