import 'package:flutter/material.dart';
import 'package:toku_app/components/phrases_item.dart';
import 'package:toku_app/models/item.dart';

class PhrasesPage extends StatefulWidget {
  const PhrasesPage({super.key});

  @override
  State<PhrasesPage> createState() => _PhrasesPageState();
}

class _PhrasesPageState extends State<PhrasesPage> {
  final List<ItemModel> phrasesList = [
    const ItemModel(
      jpName: 'Kimasu ka',
      enName: 'Are you coming',
      audio: 'sounds/phrases/are_you_coming.wav',
    ),
    const ItemModel(
      jpName: 'Kōdoku suru koto o wasurenaide',
      enName: "don't forget to subscribe",
      audio: 'sounds/phrases/are_you_coming.wav',
    ),
    const ItemModel(
      jpName: 'Go kibun wa ikagadesu ka',
      enName: "how are you feeling",
      audio: 'sounds/phrases/how_are_you_feeling.wav',
    ),
    const ItemModel(
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: "i love anime",
      audio: 'sounds/phrases/i_love_anime.wav',
    ),
    const ItemModel(
      jpName: 'Watashi wa puroguramingu',
      enName: "i love programming",
      audio: 'sounds/phrases/i_love_programming.wav',
    ),
    const ItemModel(
      jpName: 'Puroguramingu wa kantandesu',
      enName: "programming is easy",
      audio: 'sounds/phrases/programming_is_easy.wav',
    ),
    const ItemModel(
      jpName: 'Anata no namae wa nandesuka',
      enName: "what is your name",
      audio: 'sounds/phrases/what_is_your_name.wav',
    ),
    const ItemModel(
      jpName: 'Doko ni iku no',
      enName: "where are you going",
      audio: 'sounds/phrases/where_are_you_going.wav',
    ),
    const ItemModel(
      jpName: 'Hai, ikimasu',
      enName: "yes i'm coming",
      audio: 'sounds/phrases/yes_im_coming.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Phrases'),
      ),
      body: ListView.builder(
          itemCount: phrasesList.length,
          itemBuilder: (context, index) {
            return PhrasesItem(
              color: Colors.red,
              item: phrasesList[index],
            );
          }),
    );
  }
}
