import 'package:am2_library_project/widgets/home_widget.dart';
import 'package:am2_library_project/widgets/book_list_widget.dart';
import 'package:am2_library_project/widgets/main_app_bar.dart';
import 'package:am2_library_project/widgets/gradient_background.dart';
import 'package:flutter/material.dart';
import 'package:am2_library_project/model/book.dart';
import 'package:am2_library_project/widgets/Perfil_widget.dart';
import 'package:am2_library_project/model/category.dart';
import 'package:am2_library_project/widgets/category_list_widget.dart';

class MainNavigationMenuScreen extends StatefulWidget {
  const MainNavigationMenuScreen({Key? key}) : super(key: key);

  @override
  State<MainNavigationMenuScreen> createState() =>
      _MainNavigationMenuScreenState();
}

class _MainNavigationMenuScreenState extends State<MainNavigationMenuScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<String> _titles = [
    "Inicio",
    "Categorias",
    "Favoritos",
    "Perfil"
  ];

  final List<Book> books = [
    Book(
      title: "Como diseñar una Web App",
      description:
          "Lorem Lorem ipsum es el texto que se usa  habitualmente en diseño gráfico o de moda en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.",
      id: "1312576942",
      author: "Cristhian Bacusoy",
      createAt: DateTime(2021, 1, 10),
      category: "Desarrollo Web",
    ),
    Book(
      title: "Como diseñar una App Movil",
      description:
          "Lorem Lorem ipsum es el texto que se usa  habitualmente en diseño gráfico o de moda en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.",
      id: "1312576942",
      author: "Cristhian Bacusoy",
      createAt: DateTime(2021, 1, 10),
      category: "Desarrollo Movil",
    ),
  ];

  final List<CategoryBook> categories = [
    CategoryBook(title: "Ciencias"),
    CategoryBook(title: "Tecnología"),
    CategoryBook(title: "Matematicas"),
    CategoryBook(title: "Documentales"),
    CategoryBook(title: "Terror"),
    CategoryBook(title: "Manga"),
    CategoryBook(title: "Comedia"),
    CategoryBook(title: "Tragedia"),
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[
      const HomeWidget(),
      CategoryListWidget(categories: categories),
      BookListWidget(books: books),
      const Perfilwidget(),
    ];

    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: MainAppBar(title: _titles.elementAt(_selectedIndex)),
        body: _widgetOptions.elementAt(_selectedIndex),
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
      ),
    );
  }
}
