import 'package:barberbooking/Components/carosel_widget.dart';
import 'package:flutter/material.dart';
import '../Components/bottom_nav_bar.dart';
import '../Components/services_list_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeContent(),
    Text('Histórico de Agendamentos'),
    Text('Perfil'),
  ];

  void _onItemTapped(int index) {
    if (index == 3) {
      Scaffold.of(context).openDrawer();
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Barbearia'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Meus dados'),
            ),
            ListTile(
              leading: Icon(Icons.apps),
              title: Text('Portifólio'),
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Avaliações'),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(
                'Sair',
                selectionColor: Colors.red,
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavBar(
          onItemTapped: _onItemTapped, selectedIndex: _selectedIndex),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          CarouselWidget(),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Pesquisa',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Filtro'),
                ),
              ],
            ),
          ),
          Divider(),
          ServicesList(),
        ],
      ),
    );
  }
}
