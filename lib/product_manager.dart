import 'package:flutter/material.dart';
import 'package:flutter_course_app/product_control.dart';
import 'package:flutter_course_app/products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  // using curly braces to turn the startinrProduct parameter
  // an named parameter. We even assume a default value for it
  // Unnamed parameters are called positional parameters
  ProductManager({this.startingProduct});

  @override
  _ProductManagerState createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    super.initState();
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
  }

  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(String product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        Expanded(
          child: Products(_products),
        ),
      ],
    );
  }
}
