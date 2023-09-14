import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.color,
    required this.onTap,
  });
  final int color;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Color(color),
        radius: 29,
      ),
    );
  }
}
