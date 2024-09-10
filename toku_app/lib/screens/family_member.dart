import 'package:flutter/material.dart';
import 'package:toku_app/components/list_item.dart';
import 'package:toku_app/models/number.dart';

class FamilyMember extends StatelessWidget {
  final List<ItemModel> familyMember = [
    ItemModel(
        sound: 'sounds/family_members/father.wav',
        image: 'assets/images/family_members/family_father.png',
        jpName: 'Chichioya',
        enName: 'Father'),
    ItemModel(
        sound: 'sounds/family_members/mother.wav',
        image: 'assets/images/family_members/family_mother.png',
        jpName: 'Hahaoya',
        enName: 'Mother'),
    ItemModel(
        sound: 'sounds/family_members/older bother.wav',
        image: 'assets/images/family_members/family_older_brother.png',
        jpName: 'Nisan',
        enName: 'Older brother'),
    ItemModel(
        sound: 'sounds/family_members/older sister.wav',
        image: 'assets/images/family_members/family_older_sister.png',
        jpName: 'Ane',
        enName: 'Older sister'),
    ItemModel(
        sound: 'sounds/family_members/son.wav',
        image: 'assets/images/family_members/family_son.png',
        jpName: 'Musuko',
        enName: 'Son'),
    ItemModel(
        sound: 'sounds/family_members/daughter.wav',
        image: 'assets/images/family_members/family_daughter.png',
        jpName: 'Musume',
        enName: 'Dauhter'),
    ItemModel(
        sound: 'sounds/family_members/younger brohter.wav',
        image: 'assets/images/family_members/family_younger_brother.png',
        jpName: 'Ototo',
        enName: 'Young brother'),
    ItemModel(
        sound: 'sounds/family_members/younger sister.wav',
        image: 'assets/images/family_members/family_younger_sister.png',
        jpName: 'Imoto',
        enName: 'Young sister'),
    ItemModel(
        sound: 'sounds/family_members/grand father.wav',
        image: 'assets/images/family_members/family_grandfather.png',
        jpName: 'OJisan',
        enName: 'Grandfather'),
    ItemModel(
        sound: 'sounds/family_members/grand mother.wav',
        image: 'assets/images/family_members/family_grandmother.png',
        jpName: 'Sobo',
        enName: 'Grandmather')
  ];
  FamilyMember({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Family Member',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMember.length,
        itemBuilder: (context, index) {
          return ListItem(
            color: const Color(0xff55BB37),
            item: familyMember[index],
          );
        },
      ),
    );
  }
}
