import 'package:flutter/material.dart';
import 'package:pagetopageflutter/quizarray.dart';

class Quizlist extends StatefulWidget {
  const Quizlist({super.key});

  @override
  State<Quizlist> createState() => _QuizlistState();
}

class _QuizlistState extends State<Quizlist> {


  @override
  Widget build(BuildContext context) {
    QuizArray.context = context;

    return MaterialApp(
      home:  Scaffold(
        appBar: AppBar(
          title: const Text('Quiz List'),
          centerTitle: true,
        ),
        body:   Center( child: Column(
          children: QuizArray.widgets,
        ),)
      ),
    );
  }
}
