import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_7/constants.dart';
import 'package:modul_4_home_exercises/ui_7/widgets/weekly_chart.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: builtDetailsAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 21),
                    blurRadius: 53,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  builtTitleWithMoreIcon(),
                  const SizedBox(height: 15),
                  builtCaseNumber(context),
                  const SizedBox(height: 15),
                  const Text(
                    "From Health Center",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      color: kTextMediumColor,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const WeeklyChart(),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      builtInfoTextWithPercentage(
                        percentage: "6.43% \n",
                        title: "From Last Week",
                      ),
                      builtInfoTextWithPercentage(
                        percentage: "9.43% \n",
                        title: "Recovery Rate",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 21),
                    blurRadius: 54,
                    color: Colors.black.withOpacity(0.05),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Text(
                        "Global Map",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SvgPicture.asset("assets/assets7/icons/more.svg")
                    ],
                  ),
                  const SizedBox(height: 10),
                  SvgPicture.asset("assets/assets7/icons/map.svg")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  RichText builtInfoTextWithPercentage(
      {required String title, required String percentage}) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: percentage,
            style: const TextStyle(
              fontSize: 20,
              color: kPrimaryColor,
            ),
          ),
          TextSpan(
              text: title,
              style: const TextStyle(
                color: kTextMediumColor,
                height: 1.5,
              ))
        ],
      ),
    );
  }

  Row builtCaseNumber(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          "547",
          style: Theme.of(context)
              .textTheme
              .displayLarge!
              .copyWith(color: kPrimaryColor, height: 1.2),
        ),
        const Text(
          "5.9%",
          style: TextStyle(color: kPrimaryColor),
        ),
        SvgPicture.asset("assets/assets7/icons/increase.svg")
      ],
    );
  }

  Row builtTitleWithMoreIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text(
          "New Cases",
          style: TextStyle(
            color: kTextMediumColor,
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        SvgPicture.asset("assets/assets7/icons/more.svg")
      ],
    );
  }

  AppBar builtDetailsAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back_ios,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset("assets/assets7/icons/search.svg"),
        ),
      ],
    );
  }
}
