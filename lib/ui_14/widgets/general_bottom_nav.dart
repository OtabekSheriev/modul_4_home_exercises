import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/search_screen.dart';
import 'package:modul_4_home_exercises/ui_14/screens/home_screen.dart';
import 'package:modul_4_home_exercises/ui_14/screens/messages_screen.dart';
import 'package:modul_4_home_exercises/ui_14/screens/profile_screen.dart';
import 'package:modul_4_home_exercises/ui_14/screens/schedule_screen.dart';

class GeneralBottomNav extends StatefulWidget {
  const GeneralBottomNav({super.key});

  @override
  State<GeneralBottomNav> createState() => _GeneralBottomNavState();
}

class _GeneralBottomNavState extends State<GeneralBottomNav> {
  int _selectedIndex = 0;
  static final List<Widget> _screens = [
    const HomeScreen(),
    const ScheduleScreen(),
    Placeholder(),
    MessagesScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(CupertinoIcons.home, 'Home', 0),
            buildNavBarItem(CupertinoIcons.calendar, 'Calendar', 1),
            const SizedBox(width: 20),
            buildNavBarItem(CupertinoIcons.conversation_bubble, 'Messages', 3),
            buildNavBarItem(CupertinoIcons.person, 'Profile', 4),
          ],
        ),
      ),
      floatingActionButton: Transform.translate(
        offset: const Offset(0, 40),
        child: ClipOval(
          child: Material(
            color: const Color.fromRGBO(13, 110, 253, 1),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchScreen();
                }));
              },
              child: const SizedBox(
                height: 50,
                width: 50,
                child: Icon(
                  CupertinoIcons.search,
                  size: 24,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: _screens[_selectedIndex],
    );
  }

  Widget buildNavBarItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index
                ? const Color.fromRGBO(13, 110, 253, 1)
                : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 12,
              fontFamily: "SF UI Display",
              color: _selectedIndex == index
                  ? const Color.fromRGBO(13, 110, 253, 1)
                  : Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
