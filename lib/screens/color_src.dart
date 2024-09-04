// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:toku_app/components/card_item.dart';
import 'package:toku_app/models/item.dart';

class ColorPage extends StatefulWidget {
  const ColorPage({super.key});

  @override
  State<ColorPage> createState() => _ColorPageState();
}

class _ColorPageState extends State<ColorPage> {
  final List<ItemModel> colorList = const [
    ItemModel(
      image: 'assets/images/colors/color_black.png',
      audio: 'sounds/colors/black.wav',
      jpName: 'Burakku',
      enName: 'Black',
    ),
    ItemModel(
      image: 'assets/images/colors/color_brown.png',
      audio: 'sounds/colors/brown.wav',
      jpName: 'Chairo',
      enName: 'Brown',
    ),
    ItemModel(
      image: 'assets/images/colors/color_dusty_yellow.png',
      audio: 'sounds/colors/dusty yellow.wav',
      jpName: 'Dasutiierō',
      enName: 'Dusty yellow',
    ),
    ItemModel(
      image: 'assets/images/colors/color_gray.png',
      audio: 'sounds/colors/gray.wav',
      jpName: 'Gurē',
      enName: 'Gray',
    ),
    ItemModel(
      image: 'assets/images/colors/color_green.png',
      audio: 'sounds/colors/green.wav',
      jpName: 'Midori',
      enName: 'Green',
    ),
    ItemModel(
      image: 'assets/images/colors/color_red.png',
      audio: 'sounds/colors/red.wav',
      jpName: 'Aka',
      enName: 'Red',
    ),
    ItemModel(
      image: 'assets/images/colors/color_white.png',
      audio: 'sounds/colors/white.wav',
      jpName: 'Shiro',
      enName: 'White',
    ),
    ItemModel(
      image: 'assets/images/colors/yellow.png',
      audio: 'sounds/colors/yellow.wav',
      jpName: 'Kiiro',
      enName: 'Yellow',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff46322B),
        title: const Text('Colors'),
      ),
      body: ListView.builder(
          itemCount: colorList.length,
          itemBuilder: (context, index) {
            return CardItem(
              color: Colors.deepPurpleAccent,
              item: colorList[index],
            );
          }),
    );
  }
}
