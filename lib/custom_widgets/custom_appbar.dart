import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/custom_search_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Notes",
          style: TextStyle(fontSize: 32),
        ),
        CustomSearchIconButton(),
      ],
    );
  }
}
