import 'package:flutter/material.dart';

class NewPageScreen extends StatelessWidget {
  final String texto;

  NewPageScreen(this.texto);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(texto),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _indiceAtual = 0;
  final List<Widget> _telas = [
    NewPageScreen("Minha conta"),
    NewPageScreen("Meus pedidos"),
    NewPageScreen("Favoritos")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: _telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Minha conta",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "Meus pedidos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favoritos",
          ),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }
}
