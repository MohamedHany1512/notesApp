import 'package:flutter/material.dart';

class NoteItem  extends StatelessWidget {
  const NoteItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.only(top: 24,bottom: 24,left: 16),
      decoration: BoxDecoration(
        color: Color(0xffFFCC80),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        ListTile(
          title: Text('Flutter Tips',style: TextStyle(
            color: Colors.black,
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 16.0,bottom: 16),
            child: Text('Build your career with Flutter',style: TextStyle(
              color: Colors.black.withValues(),
              fontSize: 18,
            ),),
          ),
          trailing: IconButton(
            onPressed: (){},
            icon: Icon(Icons.delete),color: Colors.black,iconSize: 24,),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24),
          child: Text("May 21, 2025",style: TextStyle(
            color: Colors.black.withValues(),
            fontSize: 16,
          ),),
        ),
      ],),
    );
  }
}