import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/page/Specialization/home_music_page.dart';
import 'package:demo_tuan2/sidebar/page/Specialization/music_page.dart';
import 'package:demo_tuan2/sidebar/page/Specialization/profile_music_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeSpecialization extends StatefulWidget {
  const HomeSpecialization({Key? key}) : super(key: key);

  @override
  State<HomeSpecialization> createState() => _HomeSpecializationState();
}

class _HomeSpecializationState extends State<HomeSpecialization> {
  int selectedIndex = 0;

  List bottomNavigationBarIcons = [
    'assets/icons/Home_icon.svg',
    'assets/icons/music_icon.svg',
    'assets/icons/Profile_icon.svg',
  ];

  List childrenBody = [
    const HomeMusicPage(),
    const MusicPage(),
    const ProfileMusicPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade200,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar: Container(
          height: size.height * 0.08,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade500,
                blurRadius: 3,
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(
              bottomNavigationBarIcons.length,
              (index) => InkWell(
                onTap: () {
                  setState(() => selectedIndex = index);
                },
                child: SvgPicture.asset(
                  bottomNavigationBarIcons[index],
                  color: selectedIndex == index
                      ? Colors.lightBlue
                      : Colors.grey.shade700,
                ),
              ),
            ),
          ),
        ),
        body: childrenBody[selectedIndex],
      ),
    );
  }
}
