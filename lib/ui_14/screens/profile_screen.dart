import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/screens/edit_profile_screen.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 36),
            AppBarWidget(
              container: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 165, 164, 164)
                        .withOpacity(.1)),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                  size: 17,
                ),
              ),
              text: 'Profile',
              colortext: Colors.black,
              container2: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const EditProfileScreen();
                      },
                    ),
                  );
                },
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color.fromARGB(255, 165, 164, 164)
                          .withOpacity(.1)),
                  child: const Icon(
                    Icons.edit_outlined,
                    color: Colors.blue,
                    size: 25,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 214, 192, 1),
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/assets14/icons/profileperson.png"),
                            alignment: Alignment(0, 1))),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Leonardo",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 26,
                      fontFamily: "SF UI Display",
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "leonardo@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      fontFamily: "SF UI Display",
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 20,
                          color: Color.fromARGB(255, 245, 241, 241),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildStatCard("Reward Points", "360"),
                        buildStatCard("Travel Trips", "238"),
                        buildStatCard("Bucket List", "473"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  builtMenuItem(Icons.person_outline, 'Profile'),
                  Divider(color: Colors.grey.withOpacity(.1), thickness: 2),
                  builtMenuItem(Icons.bookmark_outline, 'Bookmarked'),
                  Divider(color: Colors.grey.withOpacity(.1), thickness: 2),
                  builtMenuItem(Icons.history_outlined, 'Previous Trips'),
                  Divider(color: Colors.grey.withOpacity(.1), thickness: 2),
                  builtMenuItem(Icons.settings_outlined, 'Settings'),
                  Divider(color: Colors.grey.withOpacity(.1), thickness: 2),
                  builtMenuItem(Icons.info_outline, 'Version'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  ListTile builtMenuItem(IconData icon, String title) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 18,
          fontFamily: "SF UI Display",
          color: Colors.black,
        ),
      ),
      trailing:
          const Icon(Icons.arrow_forward_ios, size: 22, color: Colors.grey),
      onTap: () {},
    );
  }

  Widget buildStatCard(String title, String count) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            fontFamily: "SF UI Display",
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          count,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            fontFamily: "SF UI Display",
            color: Colors.blue,
          ),
        )
      ],
    );
  }
}
