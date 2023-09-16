import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class SearchNotesListView extends StatelessWidget {
  const SearchNotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<AllNotesCubit, AllNotesState>(
        builder: (context, state) {
          List<NoteModel> filteredNoteList =
              BlocProvider.of<AllNotesCubit>(context).filteredNoteList!;
          return Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 4),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: filteredNoteList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(
                    note: filteredNoteList[index],
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
