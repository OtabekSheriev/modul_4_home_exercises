import 'package:flutter/material.dart';

class BottomNavigationItemBar extends StatefulWidget {
  const BottomNavigationItemBar({super.key});

  @override
  State<BottomNavigationItemBar> createState() =>
      _BottomNavigationItemBarState();
}

class _BottomNavigationItemBarState extends State<BottomNavigationItemBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Image(
                  image: const AssetImage("assets/assets11/icons/grid.png"),
                  color: _selectedIndex == 0
                      ? const Color.fromRGBO(45, 12, 87, 1)
                      : const Color.fromRGBO(162, 89, 255, 1),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: const AssetImage(
                      "assets/assets11/icons/shopping-cart.png"),
                  color: _selectedIndex == 1
                      ? const Color.fromRGBO(45, 12, 87, 1)
                      : const Color.fromRGBO(162, 89, 255, 1),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image(
                  image: const AssetImage("assets/assets11/icons/user.png"),
                  color: _selectedIndex == 1
                      ? const Color.fromRGBO(45, 12, 87, 1)
                      : const Color.fromRGBO(162, 89, 255, 1),
                ),
                label: '',
              ),
            ]),
        Positioned(
          top: 3,
          right: 190,
          child: Container(
            alignment: Alignment.center,
            height: 15,
            width: 15,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(255, 125, 245, 129),
            ),
            child: Text(
              "8",
              style: TextStyle(fontSize: 10),
            ),
          ),
        )
      ],
    );
  }
}
