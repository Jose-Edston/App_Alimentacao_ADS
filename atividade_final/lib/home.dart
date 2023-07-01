import 'package:flutter/material.dart';

class PaginaInicial extends StatelessWidget {
  final String nome;
  final TextEditingController _nameController;

  PaginaInicial({required this.nome})
      : _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _nameController.clear();

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remover a seta de voltar
        title: Row(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // Alinhar os elementos no espaço disponível
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bem-vindo, $nome!'),
          ],
        ),
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
