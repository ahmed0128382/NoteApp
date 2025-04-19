import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/models/note_model.dart';
import 'package:storeapp/simple_boc_observer.dart';
import 'package:storeapp/views/note_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

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
