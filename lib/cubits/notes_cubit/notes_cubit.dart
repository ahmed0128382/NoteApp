import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:storeapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
}
