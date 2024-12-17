import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_8/Screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(child: Body()),
    );
  }
}
