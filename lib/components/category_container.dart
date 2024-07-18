import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category(
      {super.key,
      required this.color,
      required this.text,
      required this.onTapping,
      this.fontolor});
  String text;
  Color color;
  Function() onTapping;
  Color? fontolor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapping,
      child: Container(
        padding: const EdgeInsets.only(left: 21),
        alignment: Alignment.centerLeft,
        height: 100,
        width: double.infinity,
        color: color,
        child: Text(
          text,
          style: TextStyle(
              fontSize: 22, color: fontolor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
