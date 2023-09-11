import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/add_note_form.dart';

class NoteSheet extends StatelessWidget {
  const NoteSheet({
    super.key,
    required this.textOfButton,
  });

  final String textOfButton;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
