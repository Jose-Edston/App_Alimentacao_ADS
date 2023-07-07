import 'package:flutter/material.dart';
import 'favoritesfood.dart';
import 'listburger.dart';
import 'listdrinks.dart';
import 'listfood.dart';
import 'listpizzas.dart';

class HomePage extends StatelessWidget {
  final String nome;
  final TextEditingController _nameController;

  HomePage({required this.nome}) : _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _nameController.clear();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.fastfood),
                SizedBox(width: 8.0),
                Text(
                  'Gordinhos Food',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              width: 250.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquise Aqui!!',
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Column(
              children: [
                Text(
                  'Bem-vindo, $nome!',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    height: 1.8,
                  ),
                ),
                Card(
                  child: Container(
                    height: 180.0,
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/folder.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          SizedBox(height: 10.0),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Categorias',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListBurgers()),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(5),
                      child: Image(
                        image: AssetImage('assets/images/folder.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListDrinks()),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(5),
                      child: Image(
                        image: AssetImage('assets/images/folder.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ListPizzas()),
                      );
                    },
                    child: Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(5),
                      child: Image(
                        image: AssetImage('assets/images/folder.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Populares',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.5),
              Container(
                width: double.infinity,
                height: 180,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset('assets/images/folder.png'),
                            ListTile(
                              title: Text(Foods[0]['Hambúrgueres'][3]['name'],
                                  textAlign: TextAlign.center),
                              subtitle: Text(
                                  '\n R\$' +
                                      Foods[0]['Hambúrgueres'][3]['price']
                                          .toString(),
                                  textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset('assets/images/folder.png'),
                            ListTile(
                              title: Text(Pizza[0]['Pizzas'][2]['name'],
                                  textAlign: TextAlign.center),
                              subtitle: Text(
                                  '\n R\$' +
                                      Pizza[0]['Pizzas'][2]['price'].toString(),
                                  textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 180,
                      margin: EdgeInsets.all(10),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset('assets/images/folder.png'),
                            ListTile(
                              title: Text(Drinks[0]['Bebidas'][3]['name'],
                                  textAlign: TextAlign.center),
                              subtitle: Text(
                                  '\n R\$' +
                                      Drinks[0]['Bebidas'][3]['price']
                                          .toString(),
                                  textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 150,
                      margin: EdgeInsets.all(10),
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset('assets/images/folder.png'),
                            ListTile(
                              title: Text(Drinks[0]['Bebidas'][2]['name'],
                                  textAlign: TextAlign.center),
                              subtitle: Text(
                                  '\n R\$' +
                                      Drinks[0]['Bebidas'][2]['price']
                                          .toString(),
                                  textAlign: TextAlign.center),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Recomendados',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 0.5),
              Container(
                width: double.infinity,
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: 210,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset('assets/images/folder.png'),
                        ],
                      ),
                    ),
                    Container(
                      width: 210,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset('assets/images/folder.png'),
                        ],
                      ),
                    ),
                    Container(
                      width: 210,
                      height: 100,
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Image.asset('assets/images/folder.png'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Carrinho',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FavoritosPage()),
                );
              },
              child: Icon(Icons.favorite),
            ),
            label: 'Favoritos',
          ),
          // icon: Icon(Icons.favorite),
          // label: 'Favoritos',
        ],
        onTap: (index) {
          if (index == 0) {
            _nameController.clear();
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
