import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

class ItemInfo extends StatelessWidget {
  final ItemModel item;
  const ItemInfo({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(item.jpName,
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
              Text(item.enName,
                  style: const TextStyle(fontSize: 16, color: Colors.white)),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: IconButton(
            onPressed: () {
              final player = AudioPlayer();

              player.play(AssetSource(item.sound));
            },
            icon: const Icon(
              Icons.play_arrow,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
