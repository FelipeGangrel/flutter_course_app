import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  _navigateBackToHome(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Detail'),
        ),
        body: Column(
          children: <Widget>[
            Text('On the products page'),
            RaisedButton(
              child: Text('BACK'),
              onPressed: () => _navigateBackToHome(context),
            )
          ],
        ));
  }
}
