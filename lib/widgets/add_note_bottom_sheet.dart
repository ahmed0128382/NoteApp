import 'package:flutter/material.dart';
import 'package:storeapp/widgets/custom_button.dart';
import 'package:storeapp/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 16,
          ),
          CustomFormTextField(
            onSaved: (data) {
              title = data;
            },
            label: 'Title',
            padding: 24,
          ),
          SizedBox(
            height: 18,
          ),
          CustomFormTextField(
            onSaved: (data) {
              subTitle = data;
            },
            label: 'Content',
            padding: 56,
          ),
          SizedBox(
            height: 48,
          ),
          CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
              text: 'Add'),
        ],
      ),
    );
  }
}
