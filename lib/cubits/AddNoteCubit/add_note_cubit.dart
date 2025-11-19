import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/note_model.dart';
part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  addNote(NoteModel note){
  try {
  emit(AddNoteLoading());
  var notesBox = Hive.box<NoteModel>(kNotesBox);
  notesBox.add(note);
  emit(AddNoteSuccess());
}  catch (e) {
  emit(AddNoteFailure(e.toString()));
}
  }
}