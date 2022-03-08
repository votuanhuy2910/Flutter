import 'package:demo_tuan2/sidebar/before_sidebar/screens/registration/register_screen.dart';
import 'package:demo_tuan2/sidebar/new_row.dart';
import 'package:demo_tuan2/sidebar/page/Specialization/home_special.dart';
import 'package:demo_tuan2/sidebar/page/company.dart';
import 'package:demo_tuan2/sidebar/page/favorites.dart';
import 'package:demo_tuan2/sidebar/page/messenger.dart';
import 'package:demo_tuan2/sidebar/page/profile.dart';
import 'package:demo_tuan2/sidebar/page/setting.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sidebar extends StatefulWidget {
  const Sidebar({Key? key}) : super(key: key);

  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Align(
            child: Text("About"),
            alignment: Alignment.center,
          ),
          // leading: IconButton(
          //   icon: Icon(Icons.arrow_back_ios_new),
          //   onPressed: () {
          //     Navigator.push(
          //         context, MaterialPageRoute(builder: (_) => HomePage()));
          //   },
          // ),
        ),
        body: Container(
          color: Colors.indigo.shade900,
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, bottom: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/avt.png'),
                            radius: 40,
                          ),
                          TextButton.icon(
                            icon: const Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: Icon(
                                FontAwesomeIcons.wifi,
                                size: 18,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          const HomeSpecialization()));
                            },
                            label: const Text(
                              "Here Specialization",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Vo Tuan Huy",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w800),
                      ),
                      const Text(
                        "votuanhuy2910@gmail.com",
                        style: TextStyle(color: Colors.blue, fontSize: 18),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const MessengerPage()));
                      },
                      child: const NewRow(
                        icon: Icons.message,
                        text: "Messenger",
                        sizeFont: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const CompanyPage()));
                      },
                      child: const NewRow(
                        icon: Icons.groups,
                        text: "Company",
                        sizeFont: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const FavoritePage()));
                      },
                      child: const NewRow(
                        icon: Icons.favorite,
                        text: "Favorites",
                        sizeFont: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ProfilePage()));
                      },
                      child: const NewRow(
                        icon: Icons.person,
                        text: "Profile",
                        sizeFont: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const SettingPage()));
                      },
                      child: const NewRow(
                        icon: Icons.settings,
                        text: "Setting",
                        sizeFont: 22,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const RegisterScreen()));
                  },
                  child: Row(
                    children: [
                      Icon(
                        Icons.cancel,
                        color: Colors.white.withOpacity(0.5),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Log Out',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
