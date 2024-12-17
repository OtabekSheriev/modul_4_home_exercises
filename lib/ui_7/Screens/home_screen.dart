import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_7/Screens/details_screen.dart';
import 'package:modul_4_home_exercises/ui_7/constants.dart';
import 'package:modul_4_home_exercises/ui_7/widgets/info_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(left: 20, top: 20, right: 20, bottom: 40),
            width: double.infinity,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.03),
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Wrap(
              spacing: 20,
              runSpacing: 20,
              children: <Widget>[
                InfoCard(
                  iconColor: const Color(0xFFFF9C00),
                  title: "Confirmed Cases",
                  effectednNum: 1062,
                  press: () {},
                ),
                InfoCard(
                  iconColor: const Color(0xFFFF2D55),
                  title: "Total Death",
                  effectednNum: 75,
                  press: () {},
                ),
                InfoCard(
                  iconColor: const Color(0xFF50E3C2),
                  title: "Total Recovered",
                  effectednNum: 689,
                  press: () {},
                ),
                InfoCard(
                  iconColor: const Color(0xFF585606),
                  title: "New Cases",
                  effectednNum: 52,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const DetailsScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Preventions",
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  builtPreventation(),
                  const SizedBox(height: 40),
                  buildHelpCard(context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Row builtPreventation() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        PreventionCard(
          svgSrd: "assets/assets7/icons/hand_wash.svg",
          title: "Wash Hands",
        ),
        PreventionCard(
          svgSrd: "assets/assets7/icons/use_mask.svg",
          title: "Use Masks",
        ),
        PreventionCard(
          svgSrd: "assets/assets7/icons/Clean_Disinfect.svg",
          title: "Clean Disinfect",
        ),
      ],
    );
  }

  Container buildHelpCard(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * .4,
              top: 20,
              right: 20,
            ),
            height: 130,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [
                  Color(0xFF60BE93),
                  Color(0xFF188D59),
                ],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Dial 999 for \nmedical Help!\n",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.white),
                  ),
                  TextSpan(
                    text: "If any symptoms appear",
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SvgPicture.asset("assets/assets7/icons/nurse.svg"),
          ),
          Positioned(
              top: 30,
              right: 10,
              child: SvgPicture.asset("assets/assets7/icons/virus.svg"))
        ],
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor.withOpacity(.03),
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset("assets/assets7/icons/menu.svg"),
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("assets/assets7/icons/search.svg"))
      ],
    );
  }
}

class PreventionCard extends StatelessWidget {
  final String svgSrd;
  final String title;
  const PreventionCard({
    super.key,
    required this.svgSrd,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SvgPicture.asset(svgSrd),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: kPrimaryColor),
        )
      ],
    );
  }
}
