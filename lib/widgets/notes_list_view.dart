import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:storeapp/models/note_model.dart';
import 'package:storeapp/widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NotesCubit, NotesState>(
      listener: (context, state) {
        if (state is NotesSuccess) {
          debugPrint(
              'NotesSuccess state received with ${state.notes.length} notes.');
        }
      },
      builder: (context, state) {
        if (state is NotesSuccess) {
          List<NoteModel> notes = state.notes;
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: NoteItem(
                    note: notes[index],
                  ),
                );
              },
            ),
          );
        } else {
          // Loading or fallback UI
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
