import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:storeapp/constants.dart';
import 'package:storeapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:storeapp/models/note_model.dart';
import 'package:storeapp/views/note_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(brightness: Brightness.dark),
        home: const NoteView(),
      ),
    );
  }
}
