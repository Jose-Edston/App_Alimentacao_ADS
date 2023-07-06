import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String nome;
  final TextEditingController _nameController;

  HomePage({required this.nome}) : _nameController = TextEditingController();

void _performSearch(String searchText) {
  String lowercaseSearch = searchText.toLowerCase();

    if (lowercaseSearch == 'burger' || lowercaseSearch == 'burgers' || lowercaseSearch == 'hamburguer' || lowercaseSearch == 'hamb' || lowercaseSearch == 'hambur') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListBurgers()),
      );
    } else if (lowercaseSearch == 'bebida' || lowercaseSearch == 'bebidas' || lowercaseSearch == 'refri' || lowercaseSearch == 'refrigerante' || lowercaseSearch == 'cerveja' || lowercaseSearch == 'cerva' || lowercaseSearch == 'gelada') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListDrinks()),
      );
    } else if (lowercaseSearch == 'pizzas' || lowercaseSearch == 'pizza' || lowercaseSearch == 'piza') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ListPizzas()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    _nameController.clear();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remover a seta de voltar
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
            margin: EdgeInsets.only(bottom: 2.0),
            child: Text(
              'Bem-vindo, $nome!',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
            Card(
              elevation: 2.0,
              child: Container(
                height: 150.0,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/folder.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Categorias:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 50.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 50.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 50.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 50.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'Populares:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 80.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 80.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 80.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 80.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 80.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 80.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Text(
              'Recomendados:',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 65.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 65.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 65.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 65.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 65.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10.0),
                Expanded(
                  child: Card(
                    elevation: 2.0,
                    child: Container(
                      height: 65.0,
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/folder.png',
                        fit: BoxFit.fill,
                      ),
                    ),
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
            icon: Icon(Icons.favorite),
            label: 'Favoritos',
          ),
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
