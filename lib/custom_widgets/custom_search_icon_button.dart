import 'package:flutter/material.dart';

class CustomSearchIconButton extends StatelessWidget {
  const CustomSearchIconButton({super.key, required this.icon});
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: icon,
        ),
      ),
    );
  }
}
