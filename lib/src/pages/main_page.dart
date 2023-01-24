import 'package:flutter/material.dart';
import 'package:myapptest/src/helper/quad_clipper.dart';
import 'package:myapptest/src/pages/home_page.dart';
import 'package:myapptest/src/pages/notification_page.dart';
import 'package:myapptest/src/pages/recomended_page.dart';
import 'package:myapptest/src/pages/remainder_page.dart';

import 'package:myapptest/src/theme/color/light_color.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    RecomendedPage(),
    Remainder_page(),
    Notification_page(),

  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      home: Scaffold(
        body: Center(child: _widgetOptions.elementAt(_selectedIndex)),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: LightColor.purple,
          unselectedItemColor: Colors.grey.shade300,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: const Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: const Icon(Icons.search), label: ""),
            BottomNavigationBarItem(
                icon: const Icon(Icons.notifications), label: ""),

            BottomNavigationBarItem(
                icon: const Icon(Icons.notifications_active), label: ""),

          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
