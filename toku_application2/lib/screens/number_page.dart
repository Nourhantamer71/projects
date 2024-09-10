import 'package:flutter/material.dart';
import 'package:toku_application2/models/item_model.dart';
import 'package:toku_application2/view/list_item.dart';

class NumberPage extends StatelessWidget {
  final List<ItemModel> number = const [
    ItemModel(
        image: 'assets/images/numbers/number_eight.png',
        enText: 'one',
        jpText: 'ichi',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        enText: 'one',
        jpText: 'ichi',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
    ItemModel(
        enText: 'one',
        jpText: 'ichi',
        sound: 'sounds/numbers/number_eight_sound.mp3'),
  ];

  const NumberPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xff463228),
      ),
      body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return ListItem(
              color: const Color(0xffEF9235),
              item: number[index],
            );
          }),
    );
  }
}
