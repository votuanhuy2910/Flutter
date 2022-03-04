import 'package:auto_size_text/auto_size_text.dart';
import 'package:demo_tuan2/models/english_today.dart';
import 'package:demo_tuan2/quote_from_noun.dart';
import 'package:flutter/material.dart';

class AllWordsPage extends StatelessWidget {
  final List<EnglishToday> words;
  const AllWordsPage({Key? key, required this.words}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(191, 255, 240, 1),
          // elevation: 0,
          title: Text(
            'English Today',
            style: TextStyle(
                fontSize: 36, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset("assets/images/left_arrow.png"),
          ),
          // actions: [
          //   IconButton(
          //     icon:
          //         Icon(Icons.fast_forward_sharp, size: 34, color: Colors.black),
          //     onPressed: () {
          //       Navigator.push(
          //           context, MaterialPageRoute(builder: (_) => AllPage()));
          //     },
          //   ),
          // ],
        ),
        body: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => QuoteFromNoun()));
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              children: words
                  .map((e) => Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(191, 255, 240, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: AutoSizeText(
                          e.noun ?? '',
                          style: TextStyle(fontSize: 32),
                          maxLines: 1,
                          overflow: TextOverflow.fade,
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildShowMore() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      alignment: Alignment.centerLeft,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Color.fromRGBO(163, 228, 219, 1),
        child: InkWell(
          onTap: () {},
          splashColor: Colors.black38,
          borderRadius: BorderRadius.all(Radius.circular(24)),
          child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Text(
                "Show More",
                style: TextStyle(fontSize: 18),
              )),
        ),
      ),
    );
  }
}
