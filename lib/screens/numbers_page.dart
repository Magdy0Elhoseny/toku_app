// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:toku_app/components/card_item.dart';
import 'package:toku_app/models/item.dart';

class NumbersPage extends StatefulWidget {
  const NumbersPage({super.key});

  @override
  State<NumbersPage> createState() => _NumbersPageState();
}

class _NumbersPageState extends State<NumbersPage> {
  final List<ItemModel> number = const [
    ItemModel(
      image: 'assets/images/numbers/number_one.png',
      audio: 'sounds/numbers/number_one_sound.mp3',
      jpName: 'ichi',
      enName: 'one',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      audio: 'sounds/numbers/number_two_sound.mp3',
      jpName: 'Ni',
      enName: 'two',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_three.png',
      audio: 'sounds/numbers/number_three_sound.mp3',
      jpName: 'San',
      enName: 'three',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_four.png',
      audio: 'sounds/numbers/number_four_sound.mp3',
      jpName: 'Shi',
      enName: 'four',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_five.png',
      audio: 'sounds/numbers/number_five_sound.mp3',
      jpName: 'Go',
      enName: 'five',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_six.png',
      audio: 'sounds/numbers/number_six_sound.mp3',
      jpName: 'Roku',
      enName: 'six',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_seven.png',
      audio: 'sounds/numbers/number_seven_sound.mp3',
      jpName: 'Sebun',
      enName: 'seven',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_eight.png',
      audio: 'sounds/numbers/number_eight_sound.mp3',
      jpName: 'hachi',
      enName: 'eight',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_nine.png',
      audio: 'sounds/numbers/number_nine_sound.mp3',
      jpName: 'kyu',
      enName: 'nine',
    ),
    ItemModel(
      image: 'assets/images/numbers/number_ten.png',
      audio: 'sounds/numbers/number_ten_sound.mp3',
      jpName: 'Ju',
      enName: 'ten',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Numbers'),
      ),
      body: ListView.builder(
          itemCount: number.length,
          itemBuilder: (context, index) {
            return CardItem(
              color: const Color(0xffEF9235),
              item: number[index],
            );
          }),
    );
  }
}
