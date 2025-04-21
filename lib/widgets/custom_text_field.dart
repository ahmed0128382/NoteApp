import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomFormTextField extends StatelessWidget {
  const CustomFormTextField(
      {super.key,
      required this.hint,
      this.onchanged,
      this.obscureText = false,
      required this.padding,
      this.onSaved});
  final String hint;
  final double padding;
  final bool obscureText;
  final Function(String)? onchanged;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: hint,
      obscureText: obscureText,
      onSaved: onSaved,
      style: TextStyle(color: Colors.greenAccent),
      validator: (data) {
        if (data?.isEmpty ?? true) {
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
        hintText: hint,
        // label: Text(
        //   label,
        //   style: TextStyle(color: Colors.greenAccent),
        // ),
      ),
    );
  }
}
