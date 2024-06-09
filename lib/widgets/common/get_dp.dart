import 'dart:math';

import 'package:flutter/material.dart';

class GetDp extends StatelessWidget {
  final double radius;
  final String label;
  const GetDp({
    super.key,
    required this.radius,
    required this.label,
  });

  static List<Color> colors = const [
    Color.fromRGBO(83, 185, 199, 1),
    Color.fromRGBO(227, 65, 60, 1),
    Color.fromRGBO(47, 196, 112, 1),
    Color.fromRGBO(166, 165, 171, 1),
  ];

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: colors[label.codeUnits.first % colors.length],
      radius: radius,
      child: Text(
        label.substring(0, min(2, label.length)),
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 15,
        ),
      ),
    );
  }
}
