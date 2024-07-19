import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  const ListItem(
      {super.key,
      required this.item,
      required this.color,
      required this.itemType,
      required this.textColor});
  final item;
  final Color color;
  final String itemType;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xFFe9ecef), child: Image.asset(item.image)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  item.enName,
                  style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();

                assetsAudioPlayer.open(
                  Audio("assets/sounds/$itemType/${item.song}"),
                );
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,
              ))
        ],
      ),
    );
  }
}

class PhrasisItem extends StatelessWidget {
  const PhrasisItem(
      {super.key,
      required this.item,
      required this.color,
      required this.itemType,
      required this.textColor});
  final item;
  final Color color;
  final String itemType;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.jpName,
                  style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  item.enName,
                  style: TextStyle(
                      fontSize: 18,
                      color: textColor,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();

                assetsAudioPlayer.open(
                  Audio("assets/sounds/$itemType/${item.song}"),
                );
              },
              icon: const Icon(
                Icons.play_arrow,
                color: Color(0xFF0d1b2a),
                size: 30,
              ))
        ],
      ),
    );
  }
}
