// TODO Implement this library.
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Start Screen"), centerTitle: true),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print("Go to Subject list");
              Navigator.pushNamed(context, '/second');
            },
            child: Text("Go to subjects list"),
          ),
        ),
      ),
    );
  }
}
