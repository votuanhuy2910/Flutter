import 'package:flutter/material.dart';

class MessengerPage extends StatefulWidget {
  const MessengerPage({Key? key}) : super(key: key);

  @override
  _MessengerPageState createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Messenger'),
        ),
        body: Center(
          child: Text(
            'Messenger Screen',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
