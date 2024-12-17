import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_1/details_screen.dart';
import 'package:modul_4_home_exercises/ui_1/model/category.dart';
import 'package:modul_4_home_exercises/ui_1/constants.dart';

class Ui1 extends StatelessWidget {
  const Ui1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Course App",
      theme: ThemeData(),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 50, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset("assets/assets1/icons/menu.svg"),
                Image.asset("assets/assets1/images/user.png")
              ],
            ),
            const SizedBox(height: 30),
            const Text(
              "Hey Otabek,",
              style: kHeadingTextStyle,
            ),
            const Text(
              "Find a course you want to learn",
              style: kSubheadingTextStyle,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F7),
                borderRadius: BorderRadius.circular(40),
              ),
              child: Row(
                children: <Widget>[
                  SvgPicture.asset("assets/assets1/icons/search.svg"),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search for anything",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFA0A5BD),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                const Text("Category", style: kTitleTextStyle),
                Text(
                  "See All",
                  style: kSubtitleTextStyle.copyWith(color: kBlueColor),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Expanded(
              child: StaggeredGridView.countBuilder(
                padding: const EdgeInsets.all(0),
                crossAxisCount: 2,
                itemCount: categories.length,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemBuilder: (context, index) {
                  if (categories[index].name == "UX Design") {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const DetailsScreen();
                        }));
                      },
                      child: builtCategoryContainer(index),
                    );
                  }
                  return builtCategoryContainer(index);
                },
                staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container builtCategoryContainer(int index) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: index.isEven ? 200 : 240,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kBlueColor,
        image: DecorationImage(
          image: AssetImage(categories[index].image),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            categories[index].name,
            style: kTitleTextStyle,
          ),
          Text(
            "${categories[index].numOfCourses} Courses",
            style: TextStyle(
              color: kTextColor.withOpacity(.5),
            ),
          )
        ],
      ),
    );
  }
}
