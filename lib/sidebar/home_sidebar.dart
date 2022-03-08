import 'dart:math';

import 'package:demo_tuan2/sidebar/widgets/histories.dart';
import 'package:demo_tuan2/sidebar/widgets/home.dart';
import 'package:demo_tuan2/sidebar/widgets/profile.dart';
import 'package:flutter/material.dart';

class HomeSidebar extends StatefulWidget {
  const HomeSidebar({Key? key}) : super(key: key);

  @override
  _HomeSidebarState createState() => _HomeSidebarState();
}

class _HomeSidebarState extends State<HomeSidebar> {
  double xOffset = 0;
  double yOffset = 0;
  bool isDrawerOpen = false;

  int _currentIndex = 0;

  final tabs = [
    const HomeWidget(),
    const Histories(),
    const ProfileWidget(),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(isDrawerOpen ? 0.90 : 1.00)
        ..rotateZ(isDrawerOpen ? pi / 20 : 0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            isDrawerOpen ? BorderRadius.circular(40) : BorderRadius.circular(0),
      ),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(248, 249, 250, 1),
            elevation: 1,
            title: GestureDetector(
              child: Image.asset("assets/images/exchange.png"),
              onTap: () {
                if (isDrawerOpen) {
                  setState(() {
                    xOffset = 0;
                    yOffset = 0;
                    isDrawerOpen = false;
                  });
                } else {
                  setState(() {
                    xOffset = size.width - 150;
                    yOffset = size.height / 5;
                    isDrawerOpen = true;
                  });
                }
              },
            ),
          ),
          body: tabs[_currentIndex],
          bottomNavigationBar: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: BottomNavigationBar(
              fixedColor: Colors.greenAccent,
              type: BottomNavigationBarType.fixed,
              selectedFontSize: 22,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedFontSize: 16,
              iconSize: 30,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bookmark),
                  label: 'Histories',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              currentIndex: _currentIndex,
              onTap: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
