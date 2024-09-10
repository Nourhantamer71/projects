import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/number.dart';

class NumbersPage extends StatelessWidget {
  final List<ItemModel> numbers = [
    ItemModel(
        image: 'assets/images/numbers/number_one.png',
        jpName: 'ichi',
        enName: 'one',
        sound: 'sounds/numbers/number_one_sound.mp3'),
    ItemModel(
        sound: 'sounds/numbers/number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'Ni',
        enName: 'Two'),
    ItemModel(
        sound: 'sounds/numbers/number_three_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'San',
        enName: 'Three'),
    ItemModel(
        sound: 'sounds/numbers/number_four_sound.mp3',
        image: 'assets/images/numbers/number_four.png',
        jpName: 'Shi',
        enName: 'Four'),
    ItemModel(
        sound: 'sounds/numbers/number_five_sound.mp3',
        image: 'assets/images/numbers/number_five.png',
        jpName: 'Go',
        enName: 'Five'),
    ItemModel(
        sound: 'sounds/numbers/number_six_sound.mp3',
        image: 'assets/images/numbers/number_six.png',
        jpName: 'Rouk',
        enName: 'Six'),
    ItemModel(
        sound: 'sounds/numbers/number_seven_sound.mp3',
        image: 'assets/images/numbers/number_seven.png',
        jpName: 'Shichi',
        enName: 'Seven'),
    ItemModel(
        sound: 'sounds/numbers/number_eight_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'Hachi',
        enName: 'Eight'),
    ItemModel(
        sound: 'sounds/numbers/number_nine_sound.mp3',
        image: 'assets/images/numbers/number_nine.png',
        jpName: 'Kyuu',
        enName: 'Nien'),
    ItemModel(
        sound: 'sounds/numbers/number_ten_sound.mp3',
        image: 'assets/images/numbers/number_ten.png',
        jpName: 'Juu',
        enName: 'Ten')
  ];
  NumbersPage({
    super.key,
  });

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
            itemCount: numbers.length,
            itemBuilder: (context, index) {
              return ListItem(
                color: const Color(0xffEF9235),
                item: numbers[index],
              );
            }));
  }
}
