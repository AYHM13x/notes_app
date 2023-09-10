import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/custom_button.dart';
import 'package:notes_app/custom_widgets/custom_text_field.dart';

class AddNoteSheet extends StatelessWidget {
  const AddNoteSheet({
    super.key,
  });

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
            CustomTextField(
              hintText: "Title",
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: "Content",
              maxLines: 5,
            ),
            const SizedBox(
              height: 32,
            ),
            const CustomButton(),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
