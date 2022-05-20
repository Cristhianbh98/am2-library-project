import 'package:am2_library_project/model/book.dart';
import 'package:flutter/material.dart';
import 'package:am2_library_project/model/category.dart';
import 'book_list_widget.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeWidget> createState() => _HomeWidget();
}

class _HomeWidget extends State<HomeWidget> {
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
    Book(
      title: "Como diseñar una App Movil",
      description:
          "Lorem Lorem ipsum es el texto que se usa  habitualmente en diseño gráfico o de moda en demostraciones de tipografías o de borradores de diseño para probar el diseño visual antes de insertar el texto final.",
      id: "1312576942",
      author: "Cristhian Bacusoy",
      createAt: DateTime(2021, 1, 10),
      category: "Desarrollo Movil",
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
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: categories.map((category){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    category.title,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                      (states) => const Color.fromRGBO(0, 0, 0, .1),
                    ),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0)),
                    ),
                    overlayColor: MaterialStateColor.resolveWith(
                      (states) => const Color.fromRGBO(0, 0, 0, .3),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        BookListWidget(books: books),
      ],
    );
  }
}
