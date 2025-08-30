import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _resultState();
}

class _resultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Result'), centerTitle: true),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
            },
            child: Text("Result"),
          ),
        ),
      ),
    );
  }
}
