import 'package:flutter/material.dart';

class FavoritosPage extends StatelessWidget {
  final dynamic dados;

  FavoritosPage({this.dados});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favoritos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(dados['image']),
            Text(dados['name'], style: TextStyle(fontSize: 20)),
            Text('Preço: R\$ ${dados['price']}',
                style: TextStyle(fontSize: 20)),
            Text('Descrição: ${dados['description']}',
                style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
