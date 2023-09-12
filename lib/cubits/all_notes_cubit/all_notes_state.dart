part of 'all_notes_cubit.dart';

@immutable
abstract class AllNotesState {}

class AllNotesInitial extends AllNotesState {}

class AllNotesLoading extends AllNotesState {}

class AllNotesSuccess extends AllNotesState {
  final List<NoteModel> notes;

  AllNotesSuccess(this.notes);
}

class AllNotesFailure extends AllNotesState {
  final String errMessage;

  AllNotesFailure(this.errMessage);
}
