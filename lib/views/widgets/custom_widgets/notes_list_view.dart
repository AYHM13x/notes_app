import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<AllNotesCubit>(context).fetchAllNotes();
    return Expanded(
      child: BlocBuilder<AllNotesCubit, AllNotesState>(
        builder: (context, state) {
          if (state is AllNotesSuccess) {
            List<NoteModel> notesList = state.notes;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: notesList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: NoteItem(
                      note: notesList[index],
                    ),
                  );
                },
              ),
            );
          }
          if (state is AllNotesFailure) {
            return const Center(
              child: Text("I can't fetch your notes"),
            );
          } else {
            return const Center(
              child: Text("there is something wrong"),
            );
          }
        },
      ),
    );
  }
}
