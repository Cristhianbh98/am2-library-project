import 'dart:html';

import 'package:am2_library_project/model/book.dart';
import 'package:am2_library_project/screens/book_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(145, 129, 242, 1),
                    borderRadius: BorderRadius.circular(10)),
                width: 200,
                child: const Center(
                    child: Text(
                  'Cultura',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(145, 129, 242, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'Terror',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(145, 129, 242, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'Fantasia',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
              Container(
                width: 200,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(145, 129, 242, 1),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                    child: Text(
                  'Comedia',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                )),
              ),
            ],
          ),
        ),
        BookListWidget(books: books),
      ],
    );
  }
}
