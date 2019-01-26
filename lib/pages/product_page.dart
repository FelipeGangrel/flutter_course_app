import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {

  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  _navigateBackToHome(BuildContext context) {
    Map<String, bool> options = {
      'delete': true
    };
    Navigator.pop(context, options);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(imageUrl),
          Container(
              padding: EdgeInsets.all(10.0),
              child: Text(title)),
          Container(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text('DELETE'),
              color: Theme.of(context).accentColor,
              onPressed: () => _navigateBackToHome(context),
            ),
          )
        ],
      ),
    );
  }
}
