import 'package:demo_tuan2/sidebar/home_sidebar.dart';
import 'package:demo_tuan2/sidebar/sidebar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainSidebar());
}

class MainSidebar extends StatelessWidget {
  const MainSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: Scaffold(
          body: Stack(
            children: const [
              Sidebar(),
              HomeSidebar(),
            ],
          ),
        ),
      ),
    );
  }
}
