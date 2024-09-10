import 'package:flutter/widgets.dart';
import 'package:toku_app/components/item_info.dart';
import 'package:toku_app/models/number.dart';

class Phrase extends StatelessWidget {
  final ItemModel item;
  final Color color;
  const Phrase({super.key, required this.item, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: color,
      child: ItemInfo(item: item),
    );
  }
}
