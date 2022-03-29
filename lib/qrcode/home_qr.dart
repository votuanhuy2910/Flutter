import 'dart:ui';

import 'package:demo_tuan2/qrcode/generate.dart';
import 'package:demo_tuan2/qrcode/scan.dart';
import 'package:flutter/material.dart';

class HomeQr extends StatefulWidget {
  const HomeQr({Key? key}) : super(key: key);

  @override
  _HomeQrState createState() => _HomeQrState();
}

class _HomeQrState extends State<HomeQr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(255, 253, 222, 1),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(88, 0, 255, 1),
          title: const Text(
            "QR CODE",
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
          // leading: InkWell(
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          //   child: Image.asset("assets/images/left_arrow.png"),
          // ),
        ),
        body: Container(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Image(
                  image: NetworkImage(
                      "https://play-lh.googleusercontent.com/seJd5m8IS6tKWvEwA7Db-X18K7MjrlCSQGlfmKdxOwnge3TvhYVFXaKTIg7-YhW-TA")),
              const SizedBox(height: 50),
              // flatButon("Scan QR CODE", Scan()),
              const SizedBox(height: 10),
              flatButon("Scan QR CODE", const Generate()),
            ],
          ),
        ),
      ),
    );
  }

  Widget flatButon(String text, Widget widget) {
    return FlatButton(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        text,
        style: const TextStyle(fontSize: 18),
      ),
      onPressed: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => widget));
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular((20.0)),
        side: const BorderSide(color: Colors.blue, width: 3.0),
      ),
    );
  }
}
