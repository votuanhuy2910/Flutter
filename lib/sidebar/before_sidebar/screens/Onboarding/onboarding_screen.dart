import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/models/onboarding_models.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/screens/registration/register_screen.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/description_text.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/widgets/title_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

PageController _pageController = PageController();
int selectedPage = 0;

nextPage() {
  _pageController.nextPage(
    duration: const Duration(milliseconds: 200),
    curve: Curves.ease,
  );
}

jumpPage() {
  _pageController.jumpToPage(2);
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 30,
              color: kTextColor,
            ),
          ),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    selectedPage = value;
                  });
                },
                controller: _pageController,
                itemCount: onboardong.length,
                itemBuilder: (context, index) {
                  return Container(
                    color: Colors.white,
                    padding:
                        EdgeInsets.symmetric(horizontal: size.width * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          height: size.height * 0.4,
                          child: Image.asset(
                            onboardong[index].imageAsset,
                            width: size.width * 0.7,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: TitleTextWidget(
                            size: size,
                            index: index,
                            name: onboardong[index].title,
                          ),
                        ),
                        DescriptionTextWidget(
                          size: size,
                          index: index,
                          description: onboardong[index].description,
                        ),
                      ],
                    ),
                  );
                },
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                  vertical: size.width * 0.03,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        jumpPage();
                      },
                      child: Text(
                        "Skip",
                        style: GoogleFonts.inter(
                          color: kTextColor,
                          fontSize: size.width * 0.04,
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                        onboardong.length,
                        (index) => AnimatedContainer(
                          duration: const Duration(milliseconds: 300),
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: selectedPage == index
                                ? kIconColor
                                : kTextColor.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        if (selectedPage == onboardong.length - 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => RegisterScreen()));
                        } else {
                          nextPage();
                        }
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: kIconColor,
                        size: size.width * 0.04,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
