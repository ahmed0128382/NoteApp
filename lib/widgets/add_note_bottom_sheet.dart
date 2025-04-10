import 'package:flutter/material.dart';
import 'package:storeapp/widgets/custom_button.dart';
import 'package:storeapp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 16,
          ),
          CustomFormTextField(
            label: 'Title',
            padding: 24,
          ),
          SizedBox(
            height: 18,
          ),
          CustomFormTextField(
            label: 'Content',
            padding: 56,
          ),
          SizedBox(
            height: 48,
          ),
          CustomButton(text: 'Add'),
        ],
      ),
    );
  }
}
