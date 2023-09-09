import 'package:flutter/material.dart';
import 'package:notes_app/custom_widgets/custom_appbar.dart';
import 'package:notes_app/custom_widgets/custom_note_item.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 30,
          ),
          CustomAppBar(),
          SizedBox(
            height: 25,
          ),
          NoteItem(),
        ],
      ),
    );
  }
}
