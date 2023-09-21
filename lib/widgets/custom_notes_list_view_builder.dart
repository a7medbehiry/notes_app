import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/read_note_cubit/read_note_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_note_item.dart';

class CustomNotesListViewBuilder extends StatelessWidget {
  final data = const [];
  const CustomNotesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReadNoteCubit, ReadNoteState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<ReadNoteCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
          ),
          child: ListView.builder(
            itemCount: notes.length,
            padding: EdgeInsets.zero,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 4,
                ),
                child: CustomNoteItem(),
              );
            },
          ),
        );
      },
    );
  }
}
