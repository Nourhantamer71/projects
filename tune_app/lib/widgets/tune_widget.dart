import 'package:flutter/material.dart';
import 'package:tune_app/model/tune_model.dart';

class ItemTone extends StatelessWidget {
  ItemTone({
    super.key,
    required this.tune,
  });
  final TuneModel tune;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.auidoPlay();
        },
        child: Container(
          //height: 200,
          color: tune.color,
        ),
      ),
    );
  }
}
