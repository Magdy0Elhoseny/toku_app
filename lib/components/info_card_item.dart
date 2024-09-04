// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:toku_app/models/item.dart';

class InfoCardItem extends StatefulWidget {
  final ItemModel item;
  const InfoCardItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  State<InfoCardItem> createState() => _InfoCardItemState();
}

class _InfoCardItemState extends State<InfoCardItem> {
  bool _isPlaying = false; // Initially not playing

  void _togglePlayPause() {
    setState(() {
      _isPlaying = !_isPlaying; // Toggle the state
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.item.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                widget.item.enName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          splashRadius: 3,
          splashColor: Colors.white24,
          onPressed: () {
            _togglePlayPause;
            final player = AudioPlayer();
            player.play(
              AssetSource(widget.item.audio),
            );
          },
          icon: Icon(
            _isPlaying ? Icons.pause : Icons.play_arrow,
            size: 30,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
