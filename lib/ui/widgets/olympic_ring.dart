import 'package:flutter/material.dart';

class OlympicRing extends StatelessWidget {
  const OlympicRing({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          width: 8,
          color: color,
        ),
      ),
    );
  }
}
