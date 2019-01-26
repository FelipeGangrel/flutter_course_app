import 'package:flutter/material.dart';
import 'package:flutter_course_app/pages/product_page.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products([this.products = const []]);

  _navigateToProduct(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (BuildContext context) => ProductPage()));
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
        child: Column(children: <Widget>[
      Image.asset('assets/food.jpg'),
      Text(products[index]),
      ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text('Details'),
            onPressed: () => _navigateToProduct(context),
          )
        ],
      )
    ]));
  }

  Widget _buildProductList() {
    Widget productList = Center(
      child: Text('Add products to the list'),
    );

    if (products.length > 0) {
      productList = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }

    return productList;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
