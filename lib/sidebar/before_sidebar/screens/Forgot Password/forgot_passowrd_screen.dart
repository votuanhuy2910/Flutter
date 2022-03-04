import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/screens/Forgot%20Password/success_passowrd_screen.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/button_widget.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/form_items.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.close,
                color: kPrimeryColor,
                size: 28,
              ),
            ),
          ],
        ),
        backgroundColor: kbackgrounColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.1, bottom: 10),
                child: Text(
                  "Fotgot Password",
                  style: GoogleFonts.inter(
                    color: kTitleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.055,
                  ),
                ),
              ),
              Text(
                "Enter your registered email below",
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: kTextColor,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.038,
                ),
              ),
              FormItems(
                size: size,
                hintText: "votuanhuy@gmail.com",
                title: "Email address",
                padding: EdgeInsets.only(top: size.height * 0.09),
                obscureText: false,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      "Remember the password?    ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: kTitleColor,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.038,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Sign in",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          color: kPrimeryColor,
                          fontWeight: FontWeight.w700,
                          fontSize: size.width * 0.04,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  alignment: Alignment.bottomCenter,
                  child: ButtonWidget(
                    size: size,
                    backgroundColor: kPrimeryColor,
                    title: "Submit",
                    titleColor: Colors.white,
                    onTab: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => SuccessPasswordScreen()));
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
