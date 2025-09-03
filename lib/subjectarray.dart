import 'dart:convert' as convert;
import 'package:http/http.dart' as https;
import 'package:pagetopageflutter/quizarray.dart';
import 'subject.dart';
import 'package:flutter/material.dart';
import 'quizlist.dart';
class Subjectarray{
  static BuildContext? context;
  static List<Subject> subjects = [];
  static List<ElevatedButton> widgets=[];
  static Future<String> downloadSubjects() async {
    final url = Uri.https(
      "sundarampal.github.io",
      "/myjsonfiles/subjects.json",

    );
    try{
      print( url);
      final response = await https.get(url);
     final a = convert.jsonDecode(response.body);
     int n=a.length;
     print(n);
     print(a);
    // print("hello");
      for (int i = 0; i <=n -1; i++) {
        String subject = a[i]["subjectname"].toString();
        String url1 = (a[i]["url1"].toString());
        String url2 = (a[i]["url2"].toString());
       // print("subject");
        widgets.add(ElevatedButton(child: Text(subject),onPressed: () async{

          QuizArray.url1=url1;
          QuizArray.url2=url2;

       await  QuizArray.downloadQuizzes();
         Navigator.pushNamed(context!,'/three');



        },));
        print(subject);
        print(url1);
        print(url2);
        subjects.add(Subject(subject,url1,url2));
      }
      return "ok";
    }
    catch(ex)
    {
      print(ex);
      return "no";
    }

  }
}
