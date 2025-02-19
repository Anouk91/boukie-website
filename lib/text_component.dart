import 'package:flutter/material.dart';

class TextComponent extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;

  const TextComponent({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
