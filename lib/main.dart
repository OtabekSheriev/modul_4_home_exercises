import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_1/ui_1.dart';
import 'package:modul_4_home_exercises/ui_10/ui_10.dart';
import 'package:modul_4_home_exercises/ui_11/ui_11.dart';
import 'package:modul_4_home_exercises/ui_12/ui_12.dart';
import 'package:modul_4_home_exercises/ui_13/ui_13.dart';
import 'package:modul_4_home_exercises/ui_14/ui_14.dart';
import 'package:modul_4_home_exercises/ui_2/ui_2.dart';
import 'package:modul_4_home_exercises/ui_3/ui_3.dart';
import 'package:modul_4_home_exercises/ui_4/ui_4.dart';
import 'package:modul_4_home_exercises/ui_5/ui_5.dart';
import 'package:modul_4_home_exercises/ui_6/ui_6.dart';
import 'package:modul_4_home_exercises/ui_7/ui_7.dart';
import 'package:modul_4_home_exercises/ui_8/ui_8.dart';
import 'package:modul_4_home_exercises/ui_9/ui_9.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Home"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;
  Offset fabPosition = const Offset(20, 20);

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const Ui1(),
      const Ui2(),
      const Ui3(),
      const Ui4(),
      const Ui5(),
      const Ui6(),
      const Ui7(),
      const Ui8(),
      const Ui9(),
      const Ui10(),
      const Ui11(),
      const Ui12(),
      const Ui13(),
      const Ui14(),
    ];

    return Container(
      child: Stack(
        children: [
          screens[index],
          Positioned(
            left: fabPosition.dx,
            top: fabPosition.dy,
            child: Draggable(
              feedback: const FloatingActionButton(
                onPressed: null,
                child: Icon(Icons.next_plan),
              ),
              child: FloatingActionButton(
                onPressed: () {
                  if (index + 1 < screens.length) {
                    index++;
                    setState(() {});
                  }
                },
                child: const Icon(Icons.next_plan),
              ),
              childWhenDragging: Container(),
              onDragEnd: (details) {
                setState(() {
                  fabPosition = details.offset;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
