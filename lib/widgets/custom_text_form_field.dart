import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final int maxLines;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  const CustomTextFormField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        border: textFieldBorder(),
        enabledBorder: textFieldBorder(),
        focusedBorder: textFieldBorder(
          kPrimaryColor,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
      ),
      cursorColor: kPrimaryColor,
      maxLines: maxLines,
    );
  }

  OutlineInputBorder textFieldBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        8,
      ),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
