import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();

    emit(NotesSuccess(notes ?? []));
    //print('fetchAllNotes called and NotesSuccess emitted');
  }
}
