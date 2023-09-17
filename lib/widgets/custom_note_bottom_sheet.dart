import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class CustomNoteBottomSheet extends StatelessWidget {
  const CustomNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 32,
          ),
          CustomTextField(),
        ],
      ),
    );
  }
}
