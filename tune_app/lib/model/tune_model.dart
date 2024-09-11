import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class TuneModel {
  final Color color;
  final String sound;

  TuneModel({required this.color, required this.sound});

  auidoPlay() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
