import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreferences/shared_widgets/appbar1.dart';
import 'package:sharedpreferences/view_note.dart';
import 'package:sizer/sizer.dart';
import 'controller/home/home.dart';
import 'shared_widgets/buttons.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final ctrl = Get.put(HomeController());

  final notesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: notesController,
                  decoration: InputDecoration(
                    hintText: 'Enter Notes',
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2, //<-- SEE HERE
                        color: Colors.greenAccent,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Container(
                  height: 30.sp,
                  width: 60.sp,
                  child: MemButton(
                    title: 'Save',
                    callback: () {
                      setNotesData(notesController.text);
                    },
                  ),
                ),
                SizedBox(
                  height: 5.sp,
                ),
                Container(
                  height: 30.sp,
                  width: 60.sp,
                  child: MemButton(
                    title: 'View',
                    callback: () {
                      Get.to(() => ViewNote());
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Future<void> setNotesData(noteValue) async {
    final SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('noteData', noteValue);
  }
}
