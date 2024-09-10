import 'package:flutter/material.dart';

class CategeoryItem extends StatelessWidget {
  String? text;
  Color? color;
  Function()? onTap;
  CategeoryItem({super.key, this.color, this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 24),
        alignment: Alignment.centerLeft,
        height: 70,
        width: double.infinity,
        color: color,
        child: Text(
          text!,
          style: const TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }
}
