import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/custom_widgets/custom_text_field.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            //isScrollControlled: true,
            backgroundColor: Colors.grey.shade800,
            context: context,
            builder: (context) {
              return const AddNoteSheet();
            });
      },
      tooltip: "Add Note",
      child: const Icon(
        Icons.note_add,
        size: 36,
      ),
    );
  }
}
