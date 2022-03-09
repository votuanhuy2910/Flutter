import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonRegisterAndLoginAndGoogle extends StatelessWidget {
  const ButtonRegisterAndLoginAndGoogle({
    Key? key,
    required this.size,
    required this.titleButton,
    this.onTab,
  }) : super(key: key);

  final Size size;
  final String titleButton;
  final onTab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Column(
        children: [
          ButtonWidget(
            size: size,
            backgroundColor: kPrimeryColor,
            title: titleButton,
            titleColor: Colors.white,
            onTab: () {},
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.25,
            ),
            child: const Divider(
              color: Colors.grey,
              height: 5,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
              vertical: size.height * 0.01,
            ),
            height: size.height * 0.07,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/iconGoogle.svg'),
                SizedBox(width: size.width * 0.05),
                Text(
                  "Sign up with Google",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: size.width * 0.038,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
