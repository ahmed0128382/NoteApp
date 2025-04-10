import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFormTextField extends StatelessWidget {
  CustomFormTextField(
      {super.key,
      required this.label,
      this.onchanged,
      this.obscureText = false,
      required this.padding});
  String label;
  double padding;
  bool obscureText;
  Function(String)? onchanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      style: TextStyle(color: Colors.greenAccent),
      validator: (data) {
        if (data!.isEmpty) {
          return 'enter a value';
        }
        return null;
      },
      onChanged: onchanged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: padding, horizontal: 16),
        errorBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        enabledBorder:
            OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent)),
        hintText: label,
        // label: Text(
        //   label,
        //   style: TextStyle(color: Colors.greenAccent),
        // ),
      ),
    );
  }
}
