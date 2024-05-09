import 'package:flutter/material.dart';

class ChipButton extends StatelessWidget {
  final String text;
  const ChipButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
      side: BorderSide.none,
      backgroundColor: const Color(0xff1f1385),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30))),
      label: Row(
        children: [
          const Icon(
            Icons.access_time,
            color: Colors.blue,
            size: 18,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: const TextStyle(color: Colors.blue, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
