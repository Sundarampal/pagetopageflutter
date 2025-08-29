import 'package:flutter/material.dart';
import 'package:pagetopageflutter/SubjectList.dart';
import 'package:pagetopageflutter/startscreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => StartScreen(),
        '/second': (context) => Subjectlist(),
      },
    ),
  );
}

// runApp(StartScreen());
