import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/constants.dart';
import 'package:notesapp/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = Color(0xFFEE6352);

  addNote(NoteModel noteModel) async {
    noteModel.color = color.value;
    emit(
      AddNoteLoading(),
    );
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(noteModel);
      emit(
        AddNoteSuccess(),
      );
    } catch (e) {
      emit(
        AddNoteFailure(
          e.toString(),
        ),
      );
    }
  }
}
