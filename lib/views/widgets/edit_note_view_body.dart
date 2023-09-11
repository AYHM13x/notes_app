import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: EditNoteForm(),
      ),
    );
  }
}

class EditNoteForm extends StatelessWidget {
  const EditNoteForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        const CustomAppBar(
          title: "Edit Note",
          icon: Icon(
            Icons.check,
            size: 32,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomTextFormField(
          hintText: "Title",
        ),
        const SizedBox(
          height: 16,
        ),
        const CustomTextFormField(
          hintText: "Content",
          maxLines: 16,
        ),
        const SizedBox(
          height: 22,
        ),
        CustomButton(
          text: "Save",
          onPressed: () {},
        ),
      ],
    );
  }
}
