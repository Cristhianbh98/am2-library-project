import 'package:am2_library_project/model/category.dart';
import 'package:am2_library_project/widgets/category_button_widget.dart';
import 'package:flutter/material.dart';

class CategoryListWidget extends StatefulWidget {
  final List<CategoryBook> categories;
  const CategoryListWidget({Key? key, required this.categories}) : super(key: key);

  @override
  State<CategoryListWidget> createState() => _CategoryListWidget();
}

class _CategoryListWidget extends State<CategoryListWidget> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 2.5,
      children: widget.categories.map((category) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: CategoryButtonWidget(text: category.title),
        );
      }).toList(),
    );
  }
}
