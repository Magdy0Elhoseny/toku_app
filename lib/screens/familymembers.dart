import 'package:flutter/material.dart';
import 'package:toku_app/components/card_item.dart';
import 'package:toku_app/models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  final List<ItemModel> familymemberslist = [
    const ItemModel(
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'father',
      audio: 'sounds/family_members/father.wav',
    ),
    const ItemModel(
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
      audio: 'sounds/family_members/mother.wav',
    ),
    const ItemModel(
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojīsan',
      enName: 'Grandfather',
      audio: 'sounds/family_members/grand father.wav',
    ),
    const ItemModel(
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'Sobo',
      enName: 'Grandmother',
      audio: 'sounds/family_members/grand mother.wav',
    ),
    const ItemModel(
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
      audio: 'sounds/family_members/son.wav',
    ),
    const ItemModel(
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
      audio: 'sounds/family_members/daughter.wav',
    ),
    const ItemModel(
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Nīsan',
      enName: 'Older Brother',
      audio: 'sounds/family_members/older bother.wav',
    ),
    const ItemModel(
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
      audio: 'sounds/family_members/older sister.wav',
    ),
    const ItemModel(
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
      audio: 'sounds/family_members/younger brohter.wav',
    ),
    const ItemModel(
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger Sister',
      audio: 'sounds/family_members/younger sister.wav',
    ),
  ];

  FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
          itemCount: familymemberslist.length,
          itemBuilder: (context, index) {
            return CardItem(
              color: Colors.green,
              item: familymemberslist[index],
            );
          }),
    );
  }
}
