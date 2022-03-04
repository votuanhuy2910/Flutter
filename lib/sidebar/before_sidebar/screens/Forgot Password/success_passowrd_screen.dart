import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SuccessPasswordScreen extends StatelessWidget {
  const SuccessPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kbackgrounColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.25),
                child: SvgPicture.asset('assets/icons/SuccessIcon.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  "Success",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    color: kTitleColor,
                    fontWeight: FontWeight.bold,
                    fontSize: size.width * 0.055,
                  ),
                ),
              ),
              Text(
                'Please check your email for create\n new password',
                textAlign: TextAlign.center,
                style: GoogleFonts.inter(
                  color: kTitleColor,
                  fontSize: size.width * 0.038,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Cant get email?     ",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.inter(
                        color: kTitleColor,
                        fontWeight: FontWeight.bold,
                        fontSize: size.width * 0.038,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        "Resubmit",
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
                    title: "Back Email",
                    titleColor: Colors.white,
                    onTab: () {
                      Navigator.pop(context);
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
