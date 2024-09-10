import 'package:flutter/material.dart';

import 'package:toku_application2/screens/color_page.dart';
import 'package:toku_application2/screens/family_screen.dart';
import 'package:toku_application2/screens/number_page.dart';
import 'package:toku_application2/screens/phrase_screen.dart';
import 'package:toku_application2/view/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff463228),
        title: const Text(
          'ToKu',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          CategoryItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumberPage();
              }));
            },
            color: const Color(0xffEF9235),
            text: ('Numbers'),
          ),
          CategoryItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyScren();
              }));
            },
            color: const Color(0xff55BB37),
            text: ('Family Members'),
          ),
          CategoryItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorScreen();
              }));
            },
            color: const Color(0xff79359F),
            text: ('Colors'),
          ),
          CategoryItem(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhraseScreen();
              }));
            },
            color: const Color(0xff56ADC7),
            text: ('Numbers'),
          ),
        ],
      ),
    );
  }
}
