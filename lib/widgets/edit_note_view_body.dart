import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/custom_appbar.dart';
import 'package:notes_app/custom_widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomAppBar(title: "Edit Note"),
          SizedBox(
            height: 16,
          ),
          //CustomTextField(hintText: ,),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
