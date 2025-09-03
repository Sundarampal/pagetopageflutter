import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as https;
import 'package:pagetopageflutter/quiz.dart';

class QuizArray {
  static BuildContext? context;
  static List<Quiz> quizzes = [];
  static List<ElevatedButton> widgets = [
    ElevatedButton(onPressed: () {}, child: Text("One")),
  ];
  static String? url1, url2;
  static Future<String> downloadQuizzes() async {
    Uri url = Uri.https(url1!, url2!);

    try {
      final response = await https.get(url);
      final a = convert.jsonDecode(response.body);
      int n = a.length;
      widgets.clear();
      for (int i = 0; i <= n - 1; i++) {
        var item = a[i];
        String quizname=item["quizname"];
        print(item);
        widgets.add(ElevatedButton(onPressed: (){}, child: Text(quizname)));
      }
      print("sundram");
      print("Quiz Array");

      print("hello");
      print(widgets);
      // print("Quiz: $quizname");
      //print("Url1: $quizUrl1");
      //print("Url2: $quizUrl2");

      return "ok";
    } catch (ex) {
      print("Error: $ex");
      return "no";
    }
  }
}
