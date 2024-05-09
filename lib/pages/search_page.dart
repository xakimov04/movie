import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/modules/chip_button.dart';

import 'comedy_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  void _handleSearch(String input) {
    if (input == "Comedy") {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ComedyPage(),
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff575370),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    hintText: "Search by title, genre, actor",
                    hintStyle: TextStyle(color: Colors.grey),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Recent Searches",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      ChipButton(text: "Marvel"),
                      SizedBox(
                        width: 10,
                      ),
                      ChipButton(text: "Captain america"),
                    ],
                  ),
                  Row(
                    children: [
                      ChipButton(text: "Captain Marvel"),
                      SizedBox(
                        width: 10,
                      ),
                      ChipButton(text: "Thor"),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Popular",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  for (var i = 1; i < 10; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image(
                          image:
                              AssetImage("assets/images/${i.toString()}.jpg"),
                          fit: BoxFit.fill,
                          width: 80,
                          height: 120,
                        ),
                      ),
                    ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Recommendations for you",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 12,
                  ),
                  for (var i = 11; i < 20; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Image(
                          image:
                              AssetImage("assets/images/${i.toString()}.jpg"),
                          fit: BoxFit.fill,
                          width: 80,
                          height: 120,
                        ),
                      ),
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
