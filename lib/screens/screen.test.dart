// import 'package:flutter/cupertino.dart';
// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  final db = FirebaseFirestore.instance;
  late Map<String, Map<String, dynamic>> view;
  void readData() async {
    await db.collection("Directory").get().then((event) {
      for (var doc in event.docs) {
        view[doc.id] = doc.data();
        // id++;
      }
    });
  }

  void onTapp() {
    setState(() {
      readData();
    });
  }

  @override
  Widget build(BuildContext context) {
    // double rong = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            ElevatedButton(
              onPressed: onTapp,
              // child: null,
              child: Text(
                '$view',
                style: GoogleFonts.nunitoSans(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
