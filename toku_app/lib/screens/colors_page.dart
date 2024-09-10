import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/number.dart';

class ColorPage extends StatelessWidget {
  final List<ItemModel> colors = [
    ItemModel(
        sound: 'sounds/colors/black.wav',
        image: 'assets/images/colors/color_black.png',
        jpName: 'Kuro',
        enName: 'Black'),
    ItemModel(
        sound: 'sounds/colors/brown.wav',
        image: 'assets/images/colors/color_brown.png',
        jpName: 'Cha',
        enName: "Brown"),
    ItemModel(
        sound: 'sounds/colors/dusty yellow.wav',
        image: 'assets/images/colors/color_dusty_yellow.png',
        jpName: 'Dasutiiero',
        enName: 'Dusty yellow'),
    ItemModel(
        sound: 'sounds/colors/gray.wav',
        image: 'assets/images/colors/color_gray.png',
        jpName: 'Hai',
        enName: 'Gray'),
    ItemModel(
        sound: 'sounds/colors/green.wav',
        image: 'assets/images/colors/color_green.png',
        jpName: 'Midior',
        enName: 'Green'),
    ItemModel(
        sound: 'sounds/colors/red.wav',
        image: 'assets/images/colors/color_red.png',
        jpName: 'Aka',
        enName: 'Red'),
    ItemModel(
        sound: 'sounds/colors/white.wav',
        image: 'assets/images/colors/color_white.png',
        jpName: 'Shiro',
        enName: 'White'),
    ItemModel(
        sound: 'sounds/colors/yellow.wav',
        image: 'assets/images/colors/yellow.png',
        jpName: 'Kiiro',
        enName: 'Yellow')
  ];
  ColorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Colors',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: colors.length,
          itemBuilder: (context, index) {
            return ListItem(
              color: const Color(0xff50ADC7),
              item: colors[index],
            );
          }),
    );
  }
}
