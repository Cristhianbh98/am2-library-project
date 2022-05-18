import 'package:am2_library_project/model/category.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatefulWidget {
  const CategoryListWidget({Key? key}) : super(key: key);

  @override
  State<CategoryListWidget> createState() => _CategoryListWidget();
}

class _CategoryListWidget extends State<CategoryListWidget> {

  final List<CategoryBook> categories = [
    CategoryBook(title: "Ciencias"),
    CategoryBook(title: "Tecnología"),
    CategoryBook(title: "Matematicas"),
    CategoryBook(title: "Documentales"),
    CategoryBook(title: "Terror"),
    CategoryBook(title: "Manga"),
    CategoryBook(title: "Comedi"),
    CategoryBook(title: "Tragedia"),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 2.5,
      children: categories.map((category) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            onPressed: () {},
            child: Text(
              category.title,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            style: ButtonStyle(
              backgroundColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(0,0,0,.1)),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
              overlayColor: MaterialStateColor.resolveWith((states) => const Color.fromRGBO(0,0,0,.3))
            ),
          ),
        );
      }).toList(),
    );
  }
}
