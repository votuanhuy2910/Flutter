import 'package:demo_tuan2/home_page.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/page/create_account_page.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/page/login_page.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/bottom_text.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/build_bottom_sheet.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/button_widget.dart';
import 'package:demo_tuan2/sidebar/main_sidebar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.grey.shade50,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
              icon: Icon(
                Icons.close,
                color: kPrimeryColor,
                size: 28,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * 0.4,
              child: Image.asset(
                "assets/images/food_deli/register.png",
                width: size.width * 0.7,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Text(
                "Welcome",
                style: GoogleFonts.inter(
                  color: kTitleColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.055,
                ),
              ),
            ),
            Text(
              "Before enjoying Foodmedia services\nPlease register first",
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                color: kTextColor,
                fontSize: size.width * 0.038,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ButtonWidget(
                size: size,
                backgroundColor: kPrimeryColor,
                onTab: () {
                  buildBottomSheet(
                    context: context,
                    size: size,
                  );
                },
                title: 'Create Account',
                titleColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: ButtonWidget(
                size: size,
                backgroundColor: kPrimeryColor.withOpacity(0.3),
                onTab: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => MainSidebar()));
                },
                title: 'Login',
                titleColor: kPrimeryColor,
              ),
            ),
            BottomTextAndRegisterScreen(size: size)
          ],
        ),
      ),
    );
  }
}
