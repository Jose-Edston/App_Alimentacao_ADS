import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  final String nome;

  PaginaInicial({required this.nome});

  @override
  _PaginaInicialState createState() => _PaginaInicialState();
}

class _PaginaInicialState extends State<PaginaInicial> {
  bool _showSearchLabel = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remover a seta de voltar
        title: Text("Teste"),
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment
        //       .spaceBetween, // Alinhar os elementos no espaço disponível
        //   children: [
        // Row(
        //   children: [
        //     Icon(Icons.fastfood),
        //     SizedBox(width: 8.0),
        //     Text(
        //       'Gordinhos Food',
        //       style: TextStyle(
        //         fontSize: 16.0,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ],
        // ),
        // GestureDetector(
        //   onTap: () {
        //     setState(() {
        //       _showSearchLabel = !_showSearchLabel;
        //     });
        //   },
        //   child: Icon(
        //     Icons.search,
        //     color: Colors.white,
        //   ),
        // ),
        // Visibility(
        //   visible: _showSearchLabel,
        //   child: Container(
        //     width: 250.0,
        //     height: 30.0,
        //     decoration: BoxDecoration(
        //       color: Colors.white,
        //       borderRadius: BorderRadius.circular(8.0),
        //     ),
        //     child: TextField(
        //       decoration: InputDecoration(
        //         hintText: 'Pesquise Aqui!!',
        //         border: InputBorder.none,
        //         suffixIcon: Icon(Icons.search),
        //         contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
        //       ),
        //     ),
        //   ),
        // ),
        // ],
        // ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: CustomSearch());
              },
              icon: Icon(Icons.search))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bem-vindo, ${widget.nome}!'),
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
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}

// class CustomSearch extends SearchDelegate {
//   @override
//   List<Widget>? buildActions(BuildContext context) {
//     // TODO: implement buildActions
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = '';
//         },
//       ),
//     ];
//   }

//   @override
//   Widget? buildLeading(BuildContext context) {
//     // TODO: implement buildLeading
//     throw;
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     // TODO: implement buildResults
//     return Text("");
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     // TODO: implement buildSuggestions
//     return Text("");
//   }
// }

class CustomSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          close(context, null);
        },
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Text('data');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Text('data');
  }
}
