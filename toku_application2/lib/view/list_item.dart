import 'package:flutter/material.dart';
import 'package:toku_application2/models/item_model.dart';
import 'package:audioplayers/audioplayers.dart';

class ListItem extends StatelessWidget {
  final Color color;

  final ItemModel item;
  const ListItem({super.key, required this.item, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.infinity,
      height: 100,
      child: Row(
        children: [
          Container(
            child: Image.asset('$item.image', color: const Color(0xffFFF6DC)),
          ),
          const VerticalDivider(
            thickness: 2,
          ),
          const Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'item.enText',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'item.jpText',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
          IconButton(
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(item.sound));
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
