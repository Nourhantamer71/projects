import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String? text;
  final Color? color;
  final Function() onTap;
  const CategoryItem({super.key, this.text, this.color, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
          height: 90,
          width: double.infinity,
          color: color,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              '$text',
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ));
  }
}
