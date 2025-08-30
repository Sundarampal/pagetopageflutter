import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _quizState();
}

class _quizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Quiz'), centerTitle: true),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context,'/fifth');

            },
            child: Text("Quiz"),
          ),
        ),
      ),
    );
  }
}
