import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modul_4_home_exercises/ui_12/bottom_nav_bar.dart';

class SearchScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  final List<String> _suggestions = [
    "Artsy black sling bag",
    "Berkely sling bag",
    "Sling bag blue color"
  ];
  final ValueNotifier<List<String>> _filteredSuggestions = ValueNotifier([]);

  SearchScreen({super.key});

  void _onSearchChanged(String value) {
    if (value.isEmpty) {
      _filteredSuggestions.value = [];
    } else {
      _filteredSuggestions.value = _suggestions
          .where((suggestion) =>
              suggestion.toLowerCase().contains(value.toLowerCase()))
          .toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "bagzz",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset("assets/assets12/images/Group 21.png"),
          )
        ],
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset("assets/assets12/icons/Main.svg"),
          color: Colors.black,
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image.asset(
                "assets/assets12/icons/x search.png",
              ),
            ),
            SizedBox(height: 20),
            ValueListenableBuilder<List<String>>(
              valueListenable: _filteredSuggestions,
              builder: (context, suggestions, child) {
                return Column(
                  children: [
                    TextField(
                      controller: _controller,
                      onChanged: _onSearchChanged,
                      decoration: InputDecoration(
                        hintText: "Type here to search",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 21,
                          color: Colors.grey,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.clear),
                          onPressed: () {
                            _controller.clear();
                            _onSearchChanged('');
                          },
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    if (suggestions.isNotEmpty)
                      Container(
                        height: 200,
                        child: ListView.builder(
                          itemCount: suggestions.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text(suggestions[index]),
                              onTap: () {
                                _controller.text = suggestions[index];
                                _filteredSuggestions.value = [];
                              },
                            );
                          },
                        ),
                      ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
