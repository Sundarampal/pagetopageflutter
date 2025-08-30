import 'package:flutter/material.dart';
class Quizlist extends StatefulWidget {
  const Quizlist({super.key});

  @override
  State<Quizlist> createState() => _quizlistState();
}

class _quizlistState extends State<Quizlist> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Quizlist"),centerTitle: true),
        body: Center(
          child: ElevatedButton(onPressed: (){
            Navigator.pushNamed(context,'/fourth');

          },
              child: Text("quizlist")),
        ),
      ),
    );
  }
}
