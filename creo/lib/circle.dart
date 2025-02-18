import 'package:flutter/material.dart';

class CircleWidget extends StatelessWidget {
  const CircleWidget({
    super.key,
    required this.radius,
    required this.color,
    required this.borderWidth,
  });

  final double radius;
  final Color color;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: color,
          width: borderWidth,
        ),
      ),
    );
  }
}
