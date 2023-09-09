import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/custom_appbar.dart';
// import 'package:notes_app/custom_widgets/custom_note_item.dart';
import 'package:notes_app/custom_widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(),
          NotesListView(),
        ],
      ),
    );
  }
}
