import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardButton extends StatelessWidget {
  final String text;
  final String speed;
  final String gb;
  final String mb;
  final String image;
  final String icon;
  const CardButton(
      {super.key,
      required this.text,
      required this.speed,
      required this.gb,
      required this.mb,
      required this.image,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xb3575370),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        width: double.infinity,
        height: 150,
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                clipBehavior: Clip.hardEdge,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Image.asset(
                  "assets/images/$image.png",
                  fit: BoxFit.fill,
                  height: 130,
                  width: 120,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        text,
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.grey[300], fontSize: 15),
                      ),
                      Image.asset(
                        "assets/icons/$icon.png",
                        width: 80,
                        height: 50,
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 120,
                                height: 2,
                                color: Colors.grey,
                              ),
                              Container(
                                width: 60,
                                height: 2,
                                color: Colors.blue,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(speed,
                                  style: const TextStyle(
                                      color: Colors.blue, fontSize: 10)),
                              const SizedBox(
                                width: 30,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: mb,
                                      style: const TextStyle(
                                          color: Colors.grey, fontSize: 10),
                                    ),
                                    TextSpan(
                                      text: gb,
                                      style: const TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(
                        Icons.pause_circle_outline,
                        color: Colors.grey,
                      ),
                      const Icon(
                        CupertinoIcons.ellipsis_vertical,
                        color: Colors.grey,
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
