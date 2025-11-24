import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/add_note_bottom_sheet.dart';
import 'package:noteapp/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const NotesViewBody(
        
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
showModalBottomSheet(
  isScrollControlled: true,
  context: context, builder: (context){
  return AddNoteBottomSheet();
});

      },shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      child: Icon(Icons.add),
      ),
    );
  }
}
