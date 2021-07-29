import 'package:flutter/material.dart';

class OlympicRing extends StatelessWidget {
  const OlympicRing({
    Key? key,
    required this.color,
    this.radius = 100,
    this.borderWidth,
  }) : super(key: key);

  final Color color;
  final double radius;
  final double? borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          width: borderWidth ?? radius / 12.5,
          color: color,
        ),
      ),
    );
  }
}
