import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
  });
  //final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<AllNotesCubit, AllNotesState>(
        builder: (context, state) {
          List<NoteModel> notesList =
              BlocProvider.of<AllNotesCubit>(context).notesList!;
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
        },
      ),
    );
  }
}
