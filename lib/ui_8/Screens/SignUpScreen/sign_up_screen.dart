import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/SignUpScreen/components/body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: Body()),
    );
  }
}
