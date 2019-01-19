import 'package:flutter/material.dart';

class Products extends StatelessWidget {

  final List<String> products;

  Products([this.products = const []]) {
    print('[Products widget] Constructor()');
  }

  @override
  Widget build(BuildContext context) {
    print('[Products widget] Build()');
    return Column(
      children: products
          .map((product) => Card(
                  child: Column(children: <Widget>[
                Image.asset('assets/food.jpg'),
                Text(product)
              ])))
          .toList()
    );
  }
}
