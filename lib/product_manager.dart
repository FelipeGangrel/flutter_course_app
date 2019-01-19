import 'package:flutter/material.dart';
import 'package:flutter_course/products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

  // using curly braces to turn the startinrProduct parameter 
  // an named parameter. We even assume a default value for it
  // Unnamed parameters are called positional parameters
  ProductManager({this.startingProduct = 'Sweets Tester'}) {
    print('[ProductManager] Constructor()');
  }

  @override
  _ProductManagerState createState() {
    print('[ProductManager] createState()');
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    print('[_ProductManagerState] initState()');
    _products.add(widget.startingProduct);
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('[_ProductManagerState] didUpdateWidget()');
  }

  @override
  Widget build(BuildContext context) {
    print('[_ProductManagerState] build()');
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('Outro produto ${_products.length}');
              });
            },
            child: Text('Add Product'),
            color: Theme.of(context).accentColor,
          ),
        ),
        Products(_products),
      ],
    );
  }
}