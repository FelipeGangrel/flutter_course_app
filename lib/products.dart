import 'package:flutter/material.dart';
import 'package:flutter_course_app/pages/product_page.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProduct;

  Products(this.products, {this.deleteProduct});

  void _navigateToProduct(BuildContext context, int index) {
    // nosso método push retornará um Future eventualmente
    // tal Future será do tipo Map (o que retornamos ao fazer o pop)
    Navigator.push<Map<String, bool>>(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) =>
            ProductPage(products[index]['title'], products[index]['imageUrl']),
      ),
    ).then((Map<String, bool> value) {
      // capturando o Future assim que ProductPage sofrer um pop
      // mas somente ao tocar no botão DELETE
      if (value['delete']) {
        deleteProduct(index);
      }
    });
  }

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
        child: Column(children: <Widget>[
      Image.asset(products[index]['imageUrl']),
      Text(products[index]['title']),
      ButtonBar(
        alignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text('Details'),
            onPressed: () => _navigateToProduct(context, index),
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
