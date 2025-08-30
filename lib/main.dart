import 'package:flutter/material.dart';
import 'package:pagetopageflutter/SubjectList.dart';
import 'package:pagetopageflutter/quiz.dart';
import 'package:pagetopageflutter/quizlist.dart';
import 'package:pagetopageflutter/result.dart';
import 'package:pagetopageflutter/startscreen.dart';
import 'package:pagetopageflutter/subjectarray.dart';

void main() async {
  await Subjectarray.downloadSubjects();
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreen(),
        '/second': (context) => Subjectlist(),
        '/three': (context) => Quizlist(),
        '/fourth':(context) => Quiz(),
        '/fifth':(context) => Result(),
      },
    ),
  );
}

  // runApp(StartScreen());
// }