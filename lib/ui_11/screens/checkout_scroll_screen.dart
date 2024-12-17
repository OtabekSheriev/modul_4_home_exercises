import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_11/screens/payment_screen.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/bottom_navigation_item_bar.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/checkout_titles.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/custom_switch.dart';
import 'package:modul_4_home_exercises/ui_11/widgets/delivery_options.dart';

class CheckoutScrollScreen extends StatelessWidget {
  const CheckoutScrollScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          iconSize: 16,
        ),
        centerTitle: true,
        title: const Text(
          "Checkout",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 17,
            color: Color.fromRGBO(45, 12, 87, 1),
          ),
        ),
        flexibleSpace: Container(
          height: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 18,
                offset: const Offset(0, 4),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationItemBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 26),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CheckoutTitles(
                title: "Payment method",
                text: "CHANGE",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const PaymentScreen();
                  }));
                },
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Icon(
                    Icons.credit_card,
                    size: 30,
                  ),
                  SizedBox(width: 18),
                  Text(
                    "**** **** **** 4747",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Color.fromRGBO(149, 134, 168, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              CheckoutTitles(
                title: "Delivery address",
                text: "CHANGE",
                press: () {},
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Icon(
                    Icons.home,
                    size: 30,
                  ),
                  SizedBox(width: 18),
                  Text(
                    "Alexandra Smith\nCesu 31 k-2 5.st, SIA Chili\nRiga\nLV-1012\nLatvia",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 17,
                      color: Color.fromRGBO(149, 134, 168, 1),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 35),
              CheckoutTitles(
                title: "Delivery options",
                text: "CHANGE",
                press: () {},
              ),
              const SizedBox(height: 30),
              const DeliveryOptions(
                text: "I'll pick it up myself",
                icon: Icons.directions_walk,
              ),
              const SizedBox(height: 25),
              const DeliveryOptions(
                text: "By courier",
                icon: Icons.pedal_bike,
              ),
              const SizedBox(height: 25),
              const DeliveryOptions(
                text: "By drone",
                icon: Icons.air_outlined,
              ),
              const SizedBox(height: 35),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Non-contact-delivery",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                        color: Color.fromRGBO(45, 12, 87, 1)),
                  ),
                  CustomSwitch(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
