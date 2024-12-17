import 'package:flutter/material.dart';
import 'package:modul_4_home_exercises/ui_14/widgets/app_bar_widget.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
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
                  text: 'Edit Profile',
                  colortext: Colors.black,
                  container2: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Done',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontFamily: "SF UI Display",
                          color: Colors.blue,
                        ),
                      ))),
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
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Change Profile Picture",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    fontFamily: "SF UI Display",
                    color: Colors.blue,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              textFieldCard('First Name', 'Name'),
              const SizedBox(height: 10),
              textFieldCard('Last Name', 'Last Name'),
              const SizedBox(height: 10),
              textFieldCard('Location', 'Loction'),
              const SizedBox(height: 10),
              textFieldCard('Mobile Number', 'Phone Number')
            ],
          ),
        ),
      ),
    );
  }

  Widget textFieldCard(
    String label,
    String hintText,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            fontFamily: "SF UI Display",
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          child: TextFormField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[100],
                hintText: hintText,
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  fontFamily: "SF UI Display",
                  color: Colors.grey,
                ),
                suffixIcon: const Icon(
                  Icons.check,
                  size: 22,
                ),
                suffixIconColor: Colors.blue,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none)),
          ),
        )
      ],
    );
  }
}
