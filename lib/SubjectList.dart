import 'package:flutter/material.dart';
import 'package:pagetopageflutter/subjectarray.dart';

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
        body: Center(child: Column(children: Subjectarray.widgets)),



        ),
      
    );
  }
}

 //Center(
// child: ElevatedButton(
// onPressed: () {
// print("Subject List");
// Navigator.pushNamed(context,'/three');
// },
// child: Text("Subject List"),
// ),
// ),
