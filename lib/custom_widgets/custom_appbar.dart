import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/custom_search_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 32),
        ),
        const CustomSearchIconButton(),
      ],
    );
  }
}
