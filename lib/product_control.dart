import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;

  ProductControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        addProduct('produto qualquer');
      },
      child: Text(
        'Add Product',
        style: TextStyle(color: Colors.white),
      ),
      color: Theme.of(context).accentColor,
    );
  }
}
