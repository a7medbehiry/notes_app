import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_note_item.dart';

class CustomNotesListViewBuilder extends StatelessWidget {
  final data = const [
    
  ];
  const CustomNotesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 4,
          ),
          child: CustomNoteItem(),
        );
      },
    );
  }
}
