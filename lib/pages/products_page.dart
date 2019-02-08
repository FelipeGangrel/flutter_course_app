import 'package:flutter/material.dart';
import 'package:flutter_course_app/pages/another_page.dart';
import 'package:flutter_course_app/product_manager.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Choose'),
              // impedindo que o botão humburger seja renderizado
              automaticallyImplyLeading: false,
            ),
            ListTile(
              title: Text('Manage products'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => AnotherPage()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: ProductManager(),
    );
  }
}
