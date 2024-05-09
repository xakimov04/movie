import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class BottomBarButton extends StatefulWidget {
  final VoidCallback func;
  const BottomBarButton({super.key, required this.func});

  @override
  State<BottomBarButton> createState() => _BottomBarButtonState();
}

class _BottomBarButtonState extends State<BottomBarButton> {
int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10.0,
            sigmaY: 10.0,
          ),
          child: BottomNavigationBar(
            selectedIconTheme:
            const IconThemeData(color: Colors.blue, size: 30),
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.transparent,
            elevation: 10,
            iconSize: 25,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.home_filled,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.search,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.bookmark,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.file_download_outlined,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                backgroundColor: Colors.transparent,
                icon: Icon(
                  Icons.person,
                ),
                label: '',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;

              });
            },
          ),
        ),
      ),
    );
  }
}
