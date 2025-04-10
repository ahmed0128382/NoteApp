import 'package:flutter/material.dart';
import 'package:storeapp/views/note_view_body.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 86, 119, 147),
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: NoteViewBody(),
    );
  }
}
