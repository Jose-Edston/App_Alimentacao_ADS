import 'package:flutter/material.dart';

class DetalhesFood extends StatefulWidget {
  var dados;
  DetalhesFood({super.key, required this.dados});

  @override
  State<DetalhesFood> createState() => _DetalhesFoodState();
}

class _DetalhesFoodState extends State<DetalhesFood> {
  bool isFavorito = false;
  List cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.dados['name']),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    isFavorito = !isFavorito;
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              FavoritosPage(dados: widget.dados)));
                },
                icon: Icon(
                  isFavorito ? Icons.favorite : Icons.favorite_border,
                  color: isFavorito ? Colors.red : null,
                ))
          ],
        ),
        body: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Center(
                  child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/bg6.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: double.infinity,
                      height: 400,
                      child: Image.network(
                        widget.dados['image'],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.dados['name'],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'idr' + widget.dados['price'].toString(),
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.only(left: 13, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      Text(
                        'Mcdi',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  margin: EdgeInsets.only(left: 13, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.blue,
                      ),
                      Text(
                        '4,7',
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Descrição',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                ),
                SizedBox(height: 10),
                Container(
                  width: 500,
                  margin: EdgeInsets.only(left: 20, right: 10),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        widget.dados['description'],
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                ),
                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          cartItems.add(widget.dados);
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CartPage(
                                    cartItems: cartItems,
                                  )),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.shopping_cart_checkout_rounded),
                          Text(' Adicionar ao carrinho'),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        textStyle: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ));
  }
}