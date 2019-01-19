import 'package:flutter/material.dart';
import 'package:flutter_course/product_manager.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App do fofão',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(startingProduct: 'Food Tester',),
    );
  }

}