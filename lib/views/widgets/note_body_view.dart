import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

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
            title: "Notes",
            icon: Icon(
              Icons.search,
              size: 32,
            ),
          ),
          NotesListView(),
        ],
      ),
    );
  }
}
