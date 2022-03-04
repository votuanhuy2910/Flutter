import 'dart:ui';

import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/button_login_register_google.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/button_widget.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/form_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

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
              hintText: 'Enter your full name',
              title: 'Full Name',
              padding: const EdgeInsets.only(top: 20),
            ),
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
            ButtonRegisterAndLoginAndGoogle(
              size: size,
              titleButton: 'Registration',
            ),
          ],
        ),
      ),
    );
  }
}
