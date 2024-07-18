import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.number});
  final number;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF1b263b),
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xFFe9ecef), child: Image.asset(number.image)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: const TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
              onPressed: () {
                AudioCache player =
                    AudioCache(prefix: 'assets/sounds/numbers/');
                player.play('number_one_sound.mp3');
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
