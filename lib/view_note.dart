import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'controller/view/view_note.dart';

class ViewNote extends StatefulWidget {
  const ViewNote({super.key});

  @override
  State<ViewNote> createState() => _ViewNoteState();
}

class _ViewNoteState extends State<ViewNote> {
  String? noteValue;

  final ctrl = Get.put(ViewNoteController());

  @override
  void initState() {
    super.initState();
    getNotes();
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ViewNoteController>(builder: (controller) {
      return SafeArea(
          child: Scaffold(
        body: Center(
          child:
              noteValue == null ? Text('No notes available') : Text(noteValue!),
        ),
      ));
    });
  }

  void getNotes() async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    noteValue = pref.getString('noteData');

    setState(() {});
  }
}
