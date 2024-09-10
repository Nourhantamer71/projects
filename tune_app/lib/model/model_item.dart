import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ModelItem {
  final String sound;
  final Color color;
  const ModelItem({required this.sound, required this.color});
  fonSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
