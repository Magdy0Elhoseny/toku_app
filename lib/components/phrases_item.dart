import 'package:flutter/material.dart';
import 'package:toku_app/components/info_card_item.dart';
import 'package:toku_app/models/item.dart';

class PhrasesItem extends StatefulWidget {
  const PhrasesItem({
    Key? key,
    required this.color,
    required this.item,
  }) : super(key: key);
  final Color color;
  final ItemModel item;

  @override
  State<PhrasesItem> createState() => _PhrasesItemState();
}

class _PhrasesItemState extends State<PhrasesItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: widget.color,
        child: InfoCardItem(item: widget.item));
  }
}
