import 'package:flutter/material.dart';

class ListBurgers extends StatefulWidget {
  const ListBurgers({super.key});

  @override
  State<ListBurgers> createState() => _ListBurgersState();
}

class _ListBurgersState extends State<ListBurgers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burgers'),
        centerTitle: true,
      ),
      body: Container(
        child: ListView.builder(
        itemCount: Foods[0]['Hambúrgueres'].length, 
        itemBuilder: (context, index){
          return ListTile(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetalhesFood(dados: Foods[0]['Hambúrgueres'][index])));
            },
            leading: Image.network(Foods[0]['Hambúrgueres'][index]['image']),
            title: Text(Foods[0]['Hambúrgueres'][index]['name']),
            subtitle: Text(Foods[0]['Hambúrgueres'][index]['description']),
            trailing: Text(Foods[0]['Hambúrgueres'][index]['price'].toString()),
          );
        },
      ),
      ),
    );
  }
}