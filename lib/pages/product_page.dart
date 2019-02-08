import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductPage(this.title, this.imageUrl);

  void _navigateBackToHome(BuildContext context) {
    Map<String, bool> options = {'delete': true};
    Navigator.pop(context, options);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        // enviando por parametro a opção de não deletar o produto
        // ao clicar em voltar ou usar o botão software ou hardware de voltar
        Navigator.pop(context, {'delete': false});
        // como o método push espera por um Future, vamos entrega-lo
        // para assim finalmente permitir que o usuário dê um pop
        // e evitar erros
        // usamos false para evitar que ocorra o pop da página anterior (home)
        // pois se fizermos um pop da mesma, para onde iríamos?
        return Future.value(false); 
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(imageUrl),
            Container(padding: EdgeInsets.all(10.0), child: Text(title)),
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
      ),
    );
  }
}
