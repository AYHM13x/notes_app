import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/custom_widgets/add_edit_note_bottom_sheet.dart';
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
          CustomAppBar(
            title: "Edit Note",
            icon: Icon(
              Icons.check,
              size: 32,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          AddEditNoteSheet(
            textOfButton: "Save",
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
