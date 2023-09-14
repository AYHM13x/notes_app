import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'all_notes_state.dart';

class AllNotesCubit extends Cubit<AllNotesState> {
  AllNotesCubit() : super(AllNotesInitial());

  List<NoteModel>? notesList;

  fetchAllNotes() {
    Box<NoteModel> noteBox = Hive.box<NoteModel>(kNotesBox);
    notesList = noteBox.values.toList();
    //emit(AllNotesSuccess(notesList!));
  }
}
