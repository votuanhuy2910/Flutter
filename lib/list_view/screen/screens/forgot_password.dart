import 'package:demo_tuan2/list_view/screen/pallete.dart';
import 'package:demo_tuan2/list_view/screen/widgets/background_image.dart';
import 'package:demo_tuan2/list_view/screen/widgets/rounded_button.dart';
import 'package:demo_tuan2/list_view/screen/widgets/text_field_input.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        BackgroundImage(image: 'assets/images/login_bg.png'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                FontAwesomeIcons.angleDoubleLeft,
                color: kWhite,
                size: 30,
              ),
            ),
            title: Text(
              'Forgot Password',
              style: kBodyText,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Container(
                    width: size.width * 0.8,
                    child: Text(
                      'Enter your email we will send instruction to reset your password',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RoundedButton(buttonName: 'Send'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
