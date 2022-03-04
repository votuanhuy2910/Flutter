import 'package:flutter/material.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({ Key? key }) : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company'),
      ),
      body: Center(
        child: Text(
          'Company Screen',
          style: TextStyle(fontSize: 30),
        ),
      ),
    );
  }
}