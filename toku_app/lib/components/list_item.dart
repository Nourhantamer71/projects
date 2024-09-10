import 'package:flutter/material.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/number.dart';

class ListItem extends StatelessWidget {
  final ItemModel item;
  final Color color;
  const ListItem({
    super.key,
    required this.item,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: color,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(item.image!),
          ),
          Expanded(child: ItemInfo(item: item))
        ],
      ),
    );
  }
}
