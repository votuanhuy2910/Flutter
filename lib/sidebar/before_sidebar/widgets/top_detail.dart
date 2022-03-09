import 'package:demo_tuan2/sidebar/before_sidebar/data/color.dart';
import 'package:flutter/material.dart';

class TopDetail extends StatelessWidget {
  const TopDetail({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            vertical: size.height * 0.02,
          ),
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: kPrimeryColor,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Text(
            'Detail Restaurant',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.045,
            ),
          ),
        ),
        Positioned(
          bottom: 13,
          left: 10,
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }
}
