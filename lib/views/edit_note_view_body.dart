import 'package:flutter/material.dart';
import 'package:storeapp/widgets/custom_app_bar.dart';
import 'package:storeapp/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

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
            onchanged: () {
              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomFormTextField(
            label: 'title',
            padding: 24,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomFormTextField(
            label: 'title',
            padding: 56,
          ),
        ],
      ),
    );
  }
}
