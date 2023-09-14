import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    super.key,
    required this.color,
    this.isSelected = false,
  });
  final int color;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            backgroundColor: Colors.green,
            radius: 29,
            child: CircleAvatar(
              backgroundColor: Color(color),
              radius: 25,
            ),
          )
        : CircleAvatar(
            backgroundColor: Colors.white,
            radius: 29,
            child: CircleAvatar(
              backgroundColor: Color(color),
              radius: 25,
            ),
          );
  }
}
