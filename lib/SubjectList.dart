import 'package:flutter/material.dart';

class Subjectlist extends StatefulWidget {
  const Subjectlist({super.key});

  @override
  State<Subjectlist> createState() => _SubjectlistState();
}

class _SubjectlistState extends State<Subjectlist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Subject List'), centerTitle: true),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              print("Subject List");
            },
            child: Text("Subject List"),
          ),
        ),
      ),
    );
  }
}
