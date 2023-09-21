import 'package:flutter/material.dart';
import 'package:notesapp/constants.dart';

void showSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: kPrimaryColor,
    ),
  );
}
