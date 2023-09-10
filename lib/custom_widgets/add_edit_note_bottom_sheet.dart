import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/custom_button.dart';
import 'package:notes_app/custom_widgets/custom_text_field.dart';

class AddEditNoteSheet extends StatelessWidget {
  const AddEditNoteSheet({
    super.key,
    required this.textOfButton,
  });

  final String textOfButton;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const CustomTextField(
              hintText: "Title",
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextField(
              hintText: "Content",
              maxLines: 5,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              text: textOfButton,
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
