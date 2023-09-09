import 'package:flutter/material.dart';

class CustomSearchIconButton extends StatelessWidget {
  const CustomSearchIconButton({super.key});

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
          icon: const Icon(
            Icons.search,
            size: 32,
          ),
        ),
      ),
    );
  }
}
