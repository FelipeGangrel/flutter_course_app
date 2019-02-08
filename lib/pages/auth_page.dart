import 'package:flutter/material.dart';
import 'package:flutter_course_app/pages/products_page.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Please authenticate'),
            RaisedButton(
              child: Text('LOGIN'),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
