import 'package:flutter/material.dart';
import 'package:toku_app/components/phrase_item.dart';
import 'package:toku_app/models/number.dart';

class PharsePage extends StatelessWidget {
  final List<ItemModel> phrase = [
    ItemModel(
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav',
        jpName: 'Kodoku suru koto o wasurenaide kudasai',
        enName: 'Dont forget to subscribe'),
    ItemModel(
        sound: 'sounds/phrases/i_love_programming.wav',
        jpName: 'Watashi wa puroguramingu ga daisukideu',
        enName: 'I love Programming'),
    ItemModel(
        sound: 'sounds/phrases/programming_is_easy.wav',
        jpName: 'Puroguramingu wa kantandesu',
        enName: 'Programming is easy'),
    ItemModel(
        sound: 'sounds/phrases/where_are_you_going.wav',
        jpName: 'Doko ni iku no?',
        enName: 'where are you going?'),
    ItemModel(
        sound: 'sounds/phrases/what_is_your_name.wav',
        jpName: 'Namae wa nandesu ka?',
        enName: 'What is your name?'),
    ItemModel(
        sound: 'sounds/phrases/i_love_anime.wav',
        jpName: 'Watashi wa anime ga daisukidesu',
        enName: 'I love anime'),
    ItemModel(
        sound: 'sounds/phrases/how_are_you_feeling.wav',
        jpName: 'Go kibun wa ikagadesu ka?',
        enName: 'How are you feeling ?'),
    ItemModel(
        sound: 'sounds/phrases/are_you_coming.wav',
        jpName: 'Kimasu Ka ?',
        enName: 'Are you coming ?'),
    ItemModel(
        sound: 'sounds/phrases/yes_im_coming.wav',
        jpName: 'Hai, imamukattei imasu',
        enName: 'yes, i am coming'),
  ];
  PharsePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pharse',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phrase.length,
        itemBuilder: (context, index) {
          return Phrase(
            color: const Color(0xff50ADC7),
            item: phrase[index],
          );
        },
      ),
    );
  }
}
