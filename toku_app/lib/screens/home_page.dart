import 'package:flutter/material.dart';
import 'package:toku_app/components/category_item.dart';
import 'package:toku_app/screens/pharse_page.dart';
import 'package:toku_app/screens/colors_page.dart';
import 'package:toku_app/screens/family_member.dart';
import 'package:toku_app/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Toku',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: const Color(0xff463228),
        ),
        body: Column(
          children: [
            CategeoryItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return NumbersPage();
                  }),
                );
              },
              text: 'Numbers',
              color: const Color(0xffEF9235),
            ),
            CategeoryItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return FamilyMember();
                  }),
                );
              },
              text: 'Family members',
              color: const Color(0xff55BB37),
            ),
            CategeoryItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ColorPage();
                  }),
                );
              },
              text: 'Colors',
              color: const Color(0xff79359F),
            ),
            CategeoryItem(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return PharsePage();
                  }),
                );
              },
              text: 'Pharses',
              color: const Color(0xff50ADC7),
            ),
          ],
        ));
  }
}
