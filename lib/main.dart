import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie/pages/comedy_page.dart';
import 'package:movie/pages/download.dart';
import 'package:movie/pages/search_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(50, 19, 28, 104),
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 3;
  final List<Widget> _screens = [
    Placeholder(),
    // ComedyPage(),
    SearchPage(),
    Placeholder(),
    DownloadPage(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: _screens[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 15.0,
              sigmaY: 15.0,
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
      ),
    );
  }
}
