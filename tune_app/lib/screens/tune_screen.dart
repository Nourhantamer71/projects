import 'package:flutter/material.dart';
import 'package:tune_app/model/tune_model.dart';
import 'package:tune_app/widgets/tune_item.dart';

// ignore: must_be_immutable
class TuneScreen extends StatelessWidget {
  final List<TuneModel> tunes = [
    TuneModel(color: const Color(0xffF44336), sound: 'note1.wav'),
    TuneModel(color: const Color(0xffF89800), sound: 'note2.wav'),
    TuneModel(color: const Color(0xffFEEB3B), sound: 'note3.wav'),
    TuneModel(color: const Color(0xff4CAF50), sound: 'note4.wav'),
    TuneModel(color: const Color(0xff2F9688), sound: 'note5.wav'),
    TuneModel(color: const Color(0xff2896F3), sound: 'note6.wav'),
    TuneModel(color: const Color(0xff9C27B0), sound: 'note7.wav'),
  ];

  TuneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253238),
        centerTitle: true,
        title: const Text(
          'Tunes App',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: tunes.map((e) => ItemTone(tune: e)).toList(),
      ),
    );
  }
}
