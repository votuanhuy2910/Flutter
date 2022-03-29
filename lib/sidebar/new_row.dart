import 'package:flutter/material.dart';

class NewRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final double sizeFont;

  const NewRow({
    Key? key,
    required this.icon,
    required this.text,
    required this.sizeFont,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: sizeFont),
          )
        ],
      ),
    );
  }
}
