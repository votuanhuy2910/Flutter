import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:demo_tuan2/all_page.dart';
import 'package:demo_tuan2/all_words_page.dart';
import 'package:demo_tuan2/barcode/home_barcode.dart';
import 'package:demo_tuan2/control_page.dart';
import 'package:demo_tuan2/list_view/home_list_view.dart';
import 'package:demo_tuan2/models/english_today.dart';
import 'package:demo_tuan2/packages/quote/qoute_model.dart';
import 'package:demo_tuan2/packages/quote/quote.dart';
import 'package:demo_tuan2/qrcode/home_qr.dart';
import 'package:demo_tuan2/sidebar/before_sidebar/screens/Onboarding/onboarding_screen.dart';
// import 'package:demo_tuan2/sidebar/main_sidebar.dart';
import 'package:demo_tuan2/values/share_keys.dart';
import 'package:demo_tuan2/widgets/app_button.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter_svg/svg.dart';
import 'package:like_button/like_button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  late PageController _pageController;

  List<EnglishToday> words = [];

  String quote = Quotes().getRandom().content!;

  List<int> fixedListRamdom({int len = 1, int max = 120, int min = 1}) {
    if (len > max || len < min) {
      return [];
    }
    List<int> newList = [];

    Random random = Random();
    int count = 1;
    while (count <= len) {
      int val = random.nextInt(max);
      if (newList.contains(val)) {
        continue;
      } else {
        newList.add(val);
        count++;
      }
    }
    return newList;
  }

  getEnglishToday() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int len = prefs.getInt(ShareKeys.counter) ?? 5;
    List<String> newList = [];
    List<int> rans = fixedListRamdom(len: len, max: nouns.length);
    rans.forEach((index) {
      newList.add(nouns[index]);
    });

    setState(() {
      words = newList.map((e) => getQuote(e)).toList();
    });
  }

  EnglishToday getQuote(String noun) {
    Quote? quote;
    quote = Quotes().getByWord(noun);
    return EnglishToday(
      noun: noun,
      quote: quote?.content,
      id: quote?.id,
    );
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _pageController = PageController(viewportFraction: 0.9);
    super.initState();
    getEnglishToday();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Color.fromARGB(255, 208, 234, 247),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'AppBar',
            style: TextStyle(
                fontSize: 36,
                color: Color.fromRGBO(28, 109, 208, 1),
                fontWeight: FontWeight.bold),
          ),
          leading: InkWell(
            onTap: () {
              _scaffoldKey.currentState?.openDrawer();
            },
            child: Image.asset("assets/images/menu.png"),
          ),
        ),
        body: Container(
          width: double.infinity,
          // margin: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Container(
                height: size.height * 1 / 10,
                padding: const EdgeInsets.symmetric(horizontal: 24),
                alignment: Alignment.centerLeft,
                child: Text(
                  '"$quote"',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
              ),
              Container(
                height: size.height * 2 / 3,
                child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemCount: words.length,
                    itemBuilder: (context, index) {
                      String firstLetter =
                          words[index].noun != null ? words[index].noun! : '';
                      firstLetter = firstLetter.substring(0, 1);

                      String leftLetter =
                          words[index].noun != null ? words[index].noun! : '';
                      leftLetter = leftLetter.substring(1, leftLetter.length);

                      String quoteDefault =
                          "Think of all the beauty still left around your and be happy";

                      String qoute = words[index].quote != null
                          ? words[index].quote!
                          : quoteDefault;

                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          color: Color(0xFF84D8FF),
                          elevation: 4,
                          child: InkWell(
                            onDoubleTap: () {
                              setState(() {
                                words[index].isFavorite =
                                    !words[index].isFavorite;
                              });
                            },
                            splashColor: Colors.transparent,
                            child: Container(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Container(
                                  //   alignment: Alignment.centerRight,
                                  //   child: Image.asset(
                                  //       "assets/images/heart.png",
                                  //       color: words[index].isFavorite
                                  //           ? Colors.red
                                  //           : Colors.white),
                                  // ),
                                  LikeButton(
                                    onTap: (bool isLiked) async {
                                      setState(() {
                                        words[index].isFavorite =
                                            !words[index].isFavorite;
                                      });
                                      return words[index].isFavorite;
                                    },
                                    isLiked: words[index].isFavorite,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    size: 42,
                                    circleColor: CircleColor(
                                        start: Color(0xff00ddff),
                                        end: Color(0xff0099cc)),
                                    bubblesColor: BubblesColor(
                                      dotPrimaryColor: Color(0xff33b5e5),
                                      dotSecondaryColor: Color(0xff0099cc),
                                    ),
                                    likeBuilder: (bool isLiked) {
                                      // return Icon(
                                      //   Icons.home,
                                      //   color: isLiked
                                      //       ? Colors.deepPurpleAccent
                                      //       : Colors.grey,
                                      //   size: 42,
                                      // );
                                      return ImageIcon(
                                        AssetImage("assets/images/heart.png"),
                                        color:
                                            isLiked ? Colors.red : Colors.white,
                                        size: 42,
                                      );
                                    },
                                  ),
                                  RichText(
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    text: TextSpan(
                                      text: firstLetter,
                                      style: TextStyle(
                                          fontSize: 89,
                                          fontWeight: FontWeight.bold,
                                          shadows: [
                                            BoxShadow(
                                              color: Colors.black38,
                                              offset: Offset(3, 6),
                                              blurRadius: 6,
                                            )
                                          ]),
                                      children: [
                                        TextSpan(
                                          text: leftLetter,
                                          style: TextStyle(
                                              fontSize: 56,
                                              fontWeight: FontWeight.bold,
                                              shadows: [
                                                BoxShadow(
                                                  color: Colors.black38,
                                                  offset: Offset(3, 6),
                                                  blurRadius: 6,
                                                )
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 24),
                                    child: AutoSizeText(
                                      '"$qoute"',
                                      maxFontSize: 28,
                                      style: TextStyle(
                                          fontSize: 28,
                                          color: Colors.black87,
                                          letterSpacing: 2),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              _currentIndex >= 5
                  ? buildShowMore()
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: SizedBox(
                        height: size.height * 1 / 11,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 24),
                          alignment: Alignment.center,
                          child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return buildIndicator(
                                    index == _currentIndex, size);
                              }),
                        ),
                      ),
                    ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xFF84D8FF),
            onPressed: () {
              setState(() {
                getEnglishToday();
              });
            },
            child: Image.asset("assets/images/exchange.png")),
        drawer: Drawer(
          child: Container(
            color: Color.fromRGBO(202, 240, 248, 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 36, left: 16),
                  child: Text(
                    'Your mind',
                    style: TextStyle(
                      color: Color.fromRGBO(8, 94, 125, 1),
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: AppButton(
                      label: 'Your control',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => ControlPage()));
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: AppButton(
                      label: 'QR Code',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HomeQr()));
                      }),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(vertical: 24),
                //   child: AppButton(
                //       label: 'Barcode',
                //       onTap: () {
                //         Navigator.push(context,
                //             MaterialPageRoute(builder: (_) => HomeBarcode()));
                //       }),
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: AppButton(
                      label: 'Menu Sidebar',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => OnboardingScreen()));
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: AppButton(
                      label: 'Food',
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => HomeListView()));
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildIndicator(bool isActive, Size size) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      // curve: Curves.bounceInOut,
      height: 8,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: isActive ? size.width * 1 / 5 : 24,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: isActive ? Color.fromRGBO(163, 228, 219, 1) : Color(0xFFC7C4C4),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(2, 3),
            blurRadius: 3,
          ),
        ],
      ),
    );
  }

  Widget buildShowMore() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      alignment: Alignment.centerLeft,
      child: Row(
        children: [
          Container(
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.all(Radius.circular(24)),
              color: Color.fromRGBO(163, 228, 219, 1),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => AllWordsPage(words: this.words)));
                },
                splashColor: Colors.black38,
                borderRadius: BorderRadius.all(Radius.circular(24)),
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    child: Text(
                      "Show Grid More",
                      style: TextStyle(fontSize: 14),
                    )),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.all(Radius.circular(24)),
              color: Color.fromRGBO(163, 228, 219, 1),
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => AllPage(words: words)));
                },
                splashColor: Colors.black38,
                borderRadius: BorderRadius.all(Radius.circular(24)),
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 12),
                    child: Text(
                      "Show List More",
                      style: TextStyle(fontSize: 14),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
