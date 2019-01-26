import 'package:flutter/material.dart';
import 'package:flutter_course_app/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EasyList',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
