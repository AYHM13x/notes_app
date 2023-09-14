import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/all_notes_cubit/all_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/color_list.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_text_field.dart';

class EditNoteForm extends StatefulWidget {
  const EditNoteForm({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  State<EditNoteForm> createState() => _EditNoteFormState();
}

class _EditNoteFormState extends State<EditNoteForm> {
  String? title, content;

  void updateNote() {
    widget.note.title = title ?? widget.note.title;
    widget.note.content = content ?? widget.note.content;
    widget.note.save();
    BlocProvider.of<AllNotesCubit>(context).fetchAllNotes();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        CustomAppBar(
          title: "Edit Note",
          icon: const Icon(
            Icons.check,
            size: 32,
          ),
          onPressed: updateNote,
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFormField(
          hintText: "Title",
          oldValue: widget.note.title!,
          onChange: (value) {
            title = value;
          },
        ),
        const SizedBox(
          height: 16,
        ),
        CustomTextFormField(
          hintText: "Content",
          oldValue: widget.note.content!,
          maxLines: 14,
          onChange: (value) {
            content = value;
          },
        ),
        const SizedBox(
          height: 8,
        ),
        const ColorList(),
        const SizedBox(
          height: 8,
        ),
        CustomNormalButton(
          text: "Save",
          onPressed: updateNote,
        ),
      ],
    );
  }
}
