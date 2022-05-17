import 'package:am2_library_project/widgets/main_app_bar.dart';
import 'package:am2_library_project/screens/book_screen.dart';
import 'package:flutter/material.dart';
import 'package:am2_library_project/model/book.dart';

class MainNavigationMenuScreen extends StatefulWidget {
  const MainNavigationMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainNavigationMenuScreen> createState() => _MainNavigationMenuScreenState();
}

class _MainNavigationMenuScreenState extends State<MainNavigationMenuScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<String> _titles = ["Home", "Categorias", "Favoritos", "Perfil"];

  @override
  Widget build(BuildContext context) {

    final List<Widget> _widgetOptions = <Widget>[
      ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookScreen(
                book: Book(
                  title: 'Como diseñar una Web App',
                  description: 'Lorem Lorem ipsum es el texto que se usa  habitualmente en diseño gráfico o de moda en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.',
                  id: '1312576942',
                  author: 'Cristhian Bacusoy',
                  createAt: DateTime(2021, 1, 10),
                  category: 'Desarrollo Web'
                )
              ),
            ),
          );
        },
        child: const Text('Go to book'),
      ),
      const Text(
        'Index 2: Categorias',
      ),
      const Text(
        'Index 3: Favoritos',
      ),
      const Text(
        'Index 3: Perfil',
      ),
    ];

    return Scaffold(
      appBar: MainAppBar(title: _titles.elementAt(_selectedIndex)),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: "Inicio",
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.category),
            label: "Categorias",
            backgroundColor: Theme.of(context).primaryColorDark,            
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.star),
            label: "Favoritos",            
            backgroundColor: Theme.of(context).primaryColorDark,            
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: "Perfil",            
            backgroundColor: Theme.of(context).primaryColorDark,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
