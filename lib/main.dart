import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const NoteView(),
    );
  }
}
