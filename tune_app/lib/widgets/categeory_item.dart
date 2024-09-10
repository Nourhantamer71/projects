import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tune_app/model/model_item.dart';

class ItemTone extends StatelessWidget {
  final ModelItem item;

  const ItemTone({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        item.sound;
      },
      child: Expanded(
        child: Container(
          // width: double.infinity,
          color: item.color,
        ),
      ),
    );
  }
}
