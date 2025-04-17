import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box(kNotesBox);
      emit(AddNoteSuccess());
      notesBox.add(note);
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}
