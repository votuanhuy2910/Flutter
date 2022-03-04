import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo_tuan2/values/share_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({Key? key}) : super(key: key);

  @override
  _ControlPageState createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  double valueSlider = 5;
  late SharedPreferences prefs;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    intitDefaultValue();
  }

  intitDefaultValue() async {
    prefs = await SharedPreferences.getInstance();
    int value = prefs.getInt(ShareKeys.counter) ?? 5;
    setState(() {
      valueSlider = value.toDouble();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(177, 208, 224, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(177, 208, 224, 1),
          elevation: 0,
          title: const Text(
            'Your control',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(3, 4, 94, 1),
            ),
          ),
          leading: InkWell(
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setInt(ShareKeys.counter, valueSlider.toInt());
              Navigator.pop(context);
            },
            child: Image.asset("assets/images/left_arrow.png"),
          ),
        ),
        body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Spacer(),
              const Text(
                'How much a number word at once',
                style: TextStyle(
                    fontSize: 18, color: Color.fromRGBO(3, 4, 94, 0.7)),
              ),
              Spacer(),
              Text(
                '${valueSlider.toInt()}',
                style: const TextStyle(
                    fontSize: 150,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(3, 4, 94, 0.7)),
              ),
              Slider(
                  value: valueSlider,
                  min: 5,
                  max: 100,
                  divisions: 95,
                  activeColor: Color.fromRGBO(3, 4, 94, 0.7),
                  inactiveColor: Color.fromRGBO(3, 4, 94, 0.7),
                  onChanged: (value) {
                    print(value);
                    setState(() {
                      valueSlider = value;
                    });
                  }),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                alignment: Alignment.centerLeft,
                child: const Text(
                  'slide to set',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromRGBO(3, 4, 94, 0.7)),
                ),
              ),
              const Spacer(),
              const Spacer(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
