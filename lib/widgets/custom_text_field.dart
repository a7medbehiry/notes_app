import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: textFieldBorder(),
        enabledBorder: textFieldBorder(),
        focusedBorder: textFieldBorder(
          kPrimaryColor,
        ),
        hintText: 'Title',
        hintStyle: TextStyle(
          color: kPrimaryColor,
        ),
      ),
      cursorColor: kPrimaryColor,
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
