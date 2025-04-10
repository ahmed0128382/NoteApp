import 'package:flutter/material.dart';
import 'package:storeapp/views/note_view_body.dart';
import 'package:storeapp/widgets/add_note_bottom_sheet.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 86, 119, 147),
        onPressed: () {
          showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
      body: NoteViewBody(),
    );
  }
}
