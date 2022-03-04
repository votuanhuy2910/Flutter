import 'package:demo_tuan2/home_page.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(144, 224, 239, 1),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Welcome to',
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: const [
                      Text('English',
                          style: TextStyle(
                              fontSize: 84,
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(221, 99, 93, 93))),
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: Text('Qoute"',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70)),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 72),
                  child: RawMaterialButton(
                      shape: CircleBorder(),
                      fillColor: Color.fromRGBO(202, 240, 248, 1),
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (_) => HomePage()),
                            (route) => false);
                      },
                      child: Image.asset("assets/images/right_arrow.png")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
