import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Generate extends StatefulWidget {
  const Generate({Key? key}) : super(key: key);

  @override
  _GenerateState createState() => _GenerateState();
}

class _GenerateState extends State<Generate> {
  String qrData = "https://github.com/votuanhuy2910";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(255, 253, 222, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(88, 0, 255, 1),
          title: Text(
            "Generate",
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                QrImage(data: qrData),
                SizedBox(height: 20),
                Text("Get your data/link to the QR CODE"),
                TextField(
                  controller: qrText,
                  decoration: InputDecoration(
                    hintText: "Enter the Data/link",
                  ),
                ),
                SizedBox(height: 20),
                FlatButton(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    "GENERATE QR CODE",
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    if (qrText.text.isEmpty) {
                      setState(() {
                        qrData = "https://flutter.dev";
                      });
                    } else {
                      setState(() {
                        qrData = qrText.text;
                      });
                    }
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular((20.0)),
                    side: BorderSide(color: Colors.blue, width: 3.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  final qrText = TextEditingController();
}
