import 'package:flutter/material.dart';

class CustomDeleteIconButton extends StatelessWidget {
  const CustomDeleteIconButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.delete,
            size: 46,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
