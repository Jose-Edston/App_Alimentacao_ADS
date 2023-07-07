import 'package:flutter/material.dart';
import 'detailsfood.dart';
import 'listfood.dart';

class ListPizzas extends StatefulWidget {
  const ListPizzas({super.key});

  @override
  State<ListPizzas> createState() => _ListPizzasState();
}

class _ListPizzasState extends State<ListPizzas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pizzas'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
          itemCount: Pizza[0]['Pizzas'].length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetalhesFood(
                      dados: Pizza[0]['Pizzas'][index],
                    ),
                  ),
                );
              },
              leading: Image.network(Pizza[0]['Pizzas'][index]['image']),
              title: Text(Pizza[0]['Pizzas'][index]['name']),
              subtitle: Text(Pizza[0]['Pizzas'][index]['description']),
              trailing:
                  Text('R\$' + Pizza[0]['Pizzas'][index]['price'].toString()),
            );
          },
        ),
      ),
    );
  }
}
