import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_floating_action_button.dart';
import 'package:notes_app/views/widgets/note_body_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AllNotesCubit(),
      child: const Scaffold(
        body: NoteViewBody(),
        floatingActionButton: CustomFloatingActionButton(),
      ),
    );
  }
}
