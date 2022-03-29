import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:demo_tuan2/models/english_today.dart';
import 'package:demo_tuan2/packages/quote/qoute_model.dart';
import 'package:demo_tuan2/packages/quote/quote.dart';
import 'package:demo_tuan2/values/share_keys.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuoteFromNoun extends StatefulWidget {
  const QuoteFromNoun({Key? key}) : super(key: key);

  @override
  _QuoteFromNounState createState() => _QuoteFromNounState();
}

class _QuoteFromNounState extends State<QuoteFromNoun> {
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

  @override
  void initState() {
    super.initState();
    getEnglishToday();
  }

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(191, 255, 240, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(191, 255, 240, 1),
        // elevation: 0,
        title: const Text(
          'New Contents',
          style: TextStyle(fontSize: 36, color: Colors.black),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset("assets/images/left_arrow.png"),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 14),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
          child: Container(
            alignment: Alignment.center,
            child: AutoSizeText('$quote',
                style: const TextStyle(fontSize: 26, color: Colors.black)),
          ),
        ),
      ),
    );
  }
}
