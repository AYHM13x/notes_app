import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import "dart:math";
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_widgets/color_item.dart';
import 'package:notes_app/views/widgets/custom_widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode validate = AutovalidateMode.disabled;

  String? title, content;
  int? choosedColor;
  void validation() {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      NoteModel note = NoteModel(
          title: title,
          content: content,
          dateTime: DateTime.now().toString(),
          color: choosedColor ?? Colors.grey.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(note);
    } else {
      validate = AutovalidateMode.always;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: validate,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFormField(
            hintText: "Title",
            onSaved: (data) {
              title = data;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormField(
            hintText: "Content",
            maxLines: 5,
            onSaved: (data) {
              content = data;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            height: 58,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: kColorListOfNotes.length,
              itemExtent: 62,
              itemBuilder: (content, index) {
                return ColorItem(
                  color: kColorListOfNotes[index],
                  onTap: () {
                    choosedColor = kColorListOfNotes[index];
                  },
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomNormalButton(
                isLoading: state is AddNoteLoading ? true : false,
                text: "Add",
                onPressed: validation,
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
