import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class SearchNoteBody extends StatefulWidget {
  const SearchNoteBody({
    super.key,
  });

  @override
  State<SearchNoteBody> createState() => _SearchNoteBodyState();
}

class _SearchNoteBodyState extends State<SearchNoteBody> {
  String? search;

  List<NoteModel>? filteredNoteList;

  @override
  void initState() {
    BlocProvider.of<AllNotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        CustomTextFormField(
          hintText: "Search",
          onChange: (value) {
            search = value;
            BlocProvider.of<AllNotesCubit>(context).searchNote(search ?? "");
          },
        ),
        Expanded(
          child: BlocBuilder<AllNotesCubit, AllNotesState>(
            builder: (context, state) {
              if (BlocProvider.of<AllNotesCubit>(context).filteredNoteList ==
                  null) {
                BlocProvider.of<AllNotesCubit>(context)
                    .searchNote(search ?? "");
                filteredNoteList =
                    BlocProvider.of<AllNotesCubit>(context).filteredNoteList!;
              } else {
                filteredNoteList =
                    BlocProvider.of<AllNotesCubit>(context).filteredNoteList!;
              }

              return Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 4),
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: filteredNoteList!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: NoteItem(
                        note: filteredNoteList![index],
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
