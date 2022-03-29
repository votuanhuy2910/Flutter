import 'package:demo_tuan2/list_view/screen/pallete.dart';
import 'package:demo_tuan2/list_view/screen/screens/create_new_account.dart';
import 'package:demo_tuan2/list_view/screen/screens/forgot_password.dart';
import 'package:demo_tuan2/list_view/screen/widgets/background_image.dart';
import 'package:demo_tuan2/list_view/screen/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          const BackgroundImage(
            image: 'assets/images/login_bg.png',
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Positioned(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            FontAwesomeIcons.angleDoubleLeft,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Flexible(
                  child: Center(
                    child: Text(
                      'FOOD',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const TextInputField(
                        icon: FontAwesomeIcons.envelope,
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next,
                      ),
                      const PasswordInput(
                        icon: FontAwesomeIcons.lock,
                        hint: 'Password',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.done,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => const ForgotPassword()));
                        },
                        child: const Text(
                          'Forgot Password',
                          style: kBodyText,
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const RoundedButton(
                        buttonName: 'Login',
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => const CreateNewAccount()));
                  },
                  child: Container(
                    child: const Text(
                      'Create New Account',
                      style: kBodyText,
                    ),
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: kWhite,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
