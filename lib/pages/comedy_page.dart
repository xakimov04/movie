import 'package:flutter/material.dart';
import 'package:movie/modules/chip_button.dart';

class ComedyPage extends StatefulWidget {
  const ComedyPage({super.key});

  @override
  State<ComedyPage> createState() => _ComedyPageState();
}

class _ComedyPageState extends State<ComedyPage> {
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
                    fillColor: const Color(0xff575370),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    hintText: "Comedy",
                    hintStyle: const TextStyle(color: Colors.grey),
                    prefixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
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
                "Results for 'comedy'",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      for (var i = 1; i < 8; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image(
                              image: AssetImage(
                                  "assets/images/${i.toString()}.jpg"),
                              fit: BoxFit.fill,
                              width: 90,
                              height: 120,
                            ),
                          ),
                        ),
                    ],
                  ),
                  Column(
                    children: [
                      for (var i = 8; i < 15; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image(
                              image: AssetImage(
                                  "assets/images/${i.toString()}.jpg"),
                              fit: BoxFit.fill,
                              width: 90,
                              height: 120,
                            ),
                          ),
                        ),
                    ],
                  ),
                  Column(
                    children: [
                      for (var i = 15; i <= 20; i++)
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Image(
                              image: AssetImage(
                                  "assets/images/${i.toString()}.jpg"),
                              fit: BoxFit.fill,
                              width: 90,
                              height: 120,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
