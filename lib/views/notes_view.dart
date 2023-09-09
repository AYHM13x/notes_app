import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/custom_floating_action_button.dart';
import 'package:notes_app/widgets/note_body_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NoteViewBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
