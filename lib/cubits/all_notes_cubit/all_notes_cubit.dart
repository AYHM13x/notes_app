import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'all_notes_state.dart';

class AllNotesCubit extends Cubit<AllNotesState> {
  AllNotesCubit() : super(AllNotesInitial());

  showAllNotes() async {
    emit(AllNotesLoading());
    try {
      Box<NoteModel> noteBox = Hive.box<NoteModel>(kNotesBox);
      // await noteBox.get();
      // emit(AllNotesSuccess());
    } catch (e) {
      emit(AllNotesFailure(e.toString()));
    }
  }
}
