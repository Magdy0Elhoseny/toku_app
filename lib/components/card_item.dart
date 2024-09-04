import 'package:flutter/material.dart';
import 'package:toku_app/models/item.dart';
import 'package:toku_app/components/info_card_item.dart';

class CardItem extends StatefulWidget {
  const CardItem({super.key, required this.item, required this.color});
  final ItemModel item;
  final Color color;
  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.color,
      height: 100,
      child: Row(
        children: [
          Container(
            color: const Color(0xffFFF6DC),
            child: Image.asset(widget.item.image!),
          ),
          Expanded(child: InfoCardItem(item: widget.item)),
        ],
      ),
    );
  }
}
