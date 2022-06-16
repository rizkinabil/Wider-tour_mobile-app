import 'package:flutter/material.dart';
// import 'package:shelter_monitoring/page/aktivitas.dart';
// import 'package:shelter_monitoring/page/akun.dart';
// import 'package:shelter_monitoring/page/homepage.dart';
// import 'package:shelter_monitoring/page/notifikasi.dart';
// import 'package:shelter_monitoring/page/shelter.dart';
import 'package:wider/home.dart';
import 'package:wider/notifikasi.dart';

import 'akun.dart';

class MyBottomNavigationBar extends StatefulWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyBottomNavigationBar> createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = <Widget>[
    DashboardPage(),
    Notifikasi(),
    // Aktivitas(),

    // Shelter(),
    Akun()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            // BottomNavigationBarItem(
            //   icon: Image.asset(
            //     'Icons.home',
            //     width: 30,
            //     // cara konek ke halaman lainnya
            //   ),
            //   label: '',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: '',
            ),
            // BottomNavigationBarItem(
            //   icon: Image.asset(
            //     'icons8-canopy-30.png',
            //     width: 25,
            //   ),
            //   label: '',
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
          onTap: (int index) {
            setState(() {
              _currentIndex = index;
            });
          }),
      body: _children.elementAt(_currentIndex),
      // return BottomNavigationBar(
    );
  }
}
