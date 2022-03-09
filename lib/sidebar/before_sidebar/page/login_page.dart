import 'dart:ui';

import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/screens/Forgot%20Password/forgot_passowrd_screen.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/button_login_register_google.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/form_items.dart';
import 'package:demo_tuan2/sidebar/main_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  get backgroundColor => null;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SizedBox(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FormItems(
              obscureText: false,
              size: size,
              hintText: 'Eg: votuanhuy@gmail.com',
              title: 'Email address',
              padding: const EdgeInsets.only(top: 15),
            ),
            FormItems(
              obscureText: true,
              size: size,
              hintText: '**** **** ****',
              title: 'Password',
              padding: const EdgeInsets.only(top: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => const ForgotPasswordScreen()));
                    },
                    child: Text(
                      "Forrgot Password?",
                      style: TextStyle(
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.w700,
                        color: kPrimeryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ButtonRegisterAndLoginAndGoogle(
              size: size,
              titleButton: 'Login',
              onTab: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const MainSidebar()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
