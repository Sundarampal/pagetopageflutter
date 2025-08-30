import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'subject.dart';
import 'package:flutter/material.dart';
class Subjectarray{
  static List<Subject> subjects = [];
  static List<ElevatedButton> widgets=[];
  static Future<String> downloadSubjects() async {
    final url = Uri.https(
      "sundarampal.github.io",
      "/myjsonfiles/subjects.json",

    );
    try{
      print( url);
      final response = await http.get(url);
     final a = convert.jsonDecode(response.body);
     int n=a.length;
     print(n);
     print(a);
      for (int i = 0; i <=n -1; i++) {
        String subject = a[i]["subjectname"].toString();
        String url1 = (a[i]["url1"].toString());
        String url2 = (a[i]["url2"].toString());
        widgets.add(ElevatedButton(child: Text(subject),onPressed: (){
          print(subject);


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
