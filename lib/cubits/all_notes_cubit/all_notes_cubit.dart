import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'all_notes_state.dart';

class AllNotesCubit extends Cubit<AllNotesState> {
  AllNotesCubit() : super(AllNotesInitial());

  fetchAllNotes() {
    //emit(AllNotesLoading());
    try {
      Box<NoteModel> noteBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> notesList = noteBox.values.toList();
      emit(AllNotesSuccess(notesList));
    } catch (e) {
      emit(AllNotesFailure(e.toString()));
    }
  }
}
