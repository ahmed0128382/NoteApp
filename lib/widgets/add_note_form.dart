import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:storeapp/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:storeapp/models/note_model.dart';
import 'package:storeapp/widgets/colors_list_view.dart';
import 'package:storeapp/widgets/custom_button.dart';
import 'package:storeapp/widgets/custom_text_field.dart';

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
            hint: 'Title',
            padding: 24,
          ),
          SizedBox(
            height: 18,
          ),
          CustomFormTextField(
            onSaved: (data) {
              subTitle = data;
            },
            hint: 'Content',
            padding: 56,
          ),
          SizedBox(
            height: 32,
          ),
          const ColorsListView(),
          // Flexible(
          //   // Make sure the ListView can stretch horizontally
          //   child: ColorsListView(),
          // ),
          SizedBox(
            height: 32,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onTap: () {
                    validateButton(context);
                  },
                  text: 'Add');
            },
          ),
        ],
      ),
    );
  }

  void validateButton(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      var noteModel = NoteModel(
          title: title!,
          subTitle: subTitle!,
          date: DateTime.now().toString().split(' ')[0],
          color: Colors.blue.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
    } else {
      autovalidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
