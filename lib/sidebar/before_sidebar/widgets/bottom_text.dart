import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:flutter/material.dart';

class BottomTextAndRegisterScreen extends StatelessWidget {
  const BottomTextAndRegisterScreen({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By Logging In Or Registering, You Have Agreed To ',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w600,
          fontSize: size.width * 0.032,
        ),
        children: [
          TextSpan(
            text: 'The Term And\n Conditions ',
            style: TextStyle(
              color: kPrimeryColor,
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.032,
            ),
          ),
          TextSpan(
            text: 'And ',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.032,
            ),
          ),
          TextSpan(
            text: 'Privacy Policy.',
            style: TextStyle(
              color: kPrimeryColor,
              fontWeight: FontWeight.w600,
              fontSize: size.width * 0.032,
            ),
          ),
        ],
      ),
    );
  }
}