import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tune_app/widgets/categeory_item.dart';
import 'package:tune_app/model/model_item.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {

     List<ModelItem> item = [
    const ModelItem(sound: 'note1.wav', color: Colors.red),
    const ModelItem(sound: 'note2.wav', color: Colors.blue),
    const ModelItem(sound: 'note3.wav', color: Colors.green),
    const ModelItem(sound: 'note4.wav', color: Colors.yellow),
    const ModelItem(sound: 'note5.wav', color: Colors.purple),
    const ModelItem(sound: 'note6.wav', color: Colors.orange),
    const ModelItem(sound: 'note7.wav', color: Colors.pink),
  ];
   HomeScreen({super.key , required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: const Text(
          'Tunes App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Column(
        children: [
            item.map((e) => ItemTone(item: ModelItem(sound: , color: color),),)
        ],
      ),
    );
  }
}
