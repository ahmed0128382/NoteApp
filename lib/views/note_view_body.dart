import 'package:flutter/material.dart';
import 'package:storeapp/widgets/custom_app_bar.dart';
import 'package:storeapp/widgets/notes_list_view.dart';

class NoteViewBody extends StatelessWidget {
  const NoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onchanged: () {},
            title: 'Notes',
            icon: Icons.search,
          ),
          const SizedBox(
            height: 8,
          ),
          const Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
