import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:storeapp/models/note_model.dart';
import 'package:storeapp/widgets/colors_list_view.dart';
import 'package:storeapp/widgets/custom_app_bar.dart';
import 'package:storeapp/widgets/custom_text_field.dart';
import 'package:storeapp/widgets/edit_view_list_color.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
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
            onTap: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFormTextField(
            onchanged: (value) {
              title = value;
            },
            initial: widget.note.title,
            hint: 'title',
            padding: 24,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomFormTextField(
            onchanged: (value) {
              content = value;
            },
            initial: widget.note.subTitle,
            hint: 'Content',
            padding: 56,
          ),
          const SizedBox(
            height: 16,
          ),
          EditViewListColor(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
