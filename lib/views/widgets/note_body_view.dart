import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:notes_app/views/search_note.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_app_bar.dart';

import 'package:notes_app/views/widgets/notes_list_view.dart';

class NoteViewBody extends StatefulWidget {
  const NoteViewBody({super.key});

  @override
  State<NoteViewBody> createState() => _NoteViewBodyState();
}

class _NoteViewBodyState extends State<NoteViewBody> {
  @override
  void initState() {
    BlocProvider.of<AllNotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 0.0),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomAppBar(
            title: "Notes",
            icon: const Icon(
              Icons.search,
              size: 32,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchNote();
                  },
                ),
              );
            },
          ),
          const NotesListView(),
        ],
      ),
    );
  }
}
