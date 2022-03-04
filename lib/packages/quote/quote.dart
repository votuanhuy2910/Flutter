import 'dart:math';

import 'qoute_model.dart';
import 'quotes.dart';

class Quotes {
  static Quotes _instance = Quotes._internal();
  static List<Quote> datas = [];
  Quotes._internal();

  factory Quotes() => _instance;
  getAll() {
    datas = allQuotes.map((e) => Quote.fromJson(e)).toList();
  }

  static List<Quote> convert(List<dynamic> quotes) {
    return quotes.map((e) => Quote.fromJson(e)).toList();
  }

  Quote? getByWord(String word) {
    List<Quote> quotes = datas.where((element) {
      String content = element.getContent() ?? " ";
      return content.contains(word);
    }).toList();
    Random ran = Random();
    return quotes.isEmpty ? null : quotes[ran.nextInt(quotes.length)];
  }

  int _getRandomIndex() {
    return new Random.secure().nextInt(allQuotes.length);
  }

  Quote getRandom() {
    return datas[_getRandomIndex()];
  }
}
