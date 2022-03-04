import 'package:demo_tuan2/models/english_today.dart';
import 'package:flutter/material.dart';

class AllPage extends StatelessWidget {
  final List<EnglishToday> words;
  const AllPage({Key? key, required this.words}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromRGBO(223, 246, 255, 1),
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(223, 246, 255, 1),
            title: Text(
              'English Today',
              style: TextStyle(
                  fontSize: 34,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            leading: IconButton(
                icon: Icon(Icons.arrow_back_ios, color: Colors.black, size: 28),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ),
          body: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 8),
              itemCount: words.length,
              itemBuilder: (context, index) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                      color: (index % 2) == 0
                          ? Color.fromRGBO(21, 114, 161, 1)
                          : Color.fromRGBO(223, 246, 255, 1),
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    title: Text(
                      words[index].noun!,
                      style: TextStyle(
                          color: (index % 2) == 0 ? Colors.white : Colors.black,
                          fontSize: 26),
                    ),
                    subtitle: Text(
                      words[index].quote ??
                          '"Think of all the beauty still left around your and be happy"',
                      style: TextStyle(
                          color: (index % 2) == 0
                              ? Colors.white70
                              : Colors.black87,
                          fontSize: 16),
                    ),
                    leading: Icon(
                      Icons.favorite,
                      color: words[index].isFavorite ? Colors.red : Colors.grey,
                    ),
                  ),
                );
              })),
    );
  }
}
