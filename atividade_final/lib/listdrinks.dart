import 'package:flutter/material.dart';
import 'detailsfood.dart';
import 'listfood.dart';

class ListDrinks extends StatefulWidget {
  const ListDrinks({super.key});

  @override
  State<ListDrinks> createState() => _ListDrinksState();
}

class _ListDrinksState extends State<ListDrinks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drinks'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Drinks[0]['Bebidas'].length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        DetalhesFood(dados: Drinks[0]['Bebidas'][index]),
                  ),
                );
              },
              leading: Image.network(Drinks[0]['Bebidas'][index]['image']),
              title: Text(Drinks[0]['Bebidas'][index]['name']),
              subtitle: Text(Drinks[0]['Bebidas'][index]['description']),
              trailing:
                  Text('R\$' + Drinks[0]['Bebidas'][index]['price'].toString()),
            );
          },
        ),
      ),
    );
  }
}
