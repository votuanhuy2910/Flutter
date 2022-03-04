import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const AppButton({Key? key, required this.label, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(3, 6), blurRadius: 6)
            ],
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Text(
          label,
          style:
              TextStyle(fontSize: 24, color: Color.fromARGB(255, 44, 178, 204)),
        ),
      ),
    );
  }
}
