import 'package:am2_library_project/model/book.dart';
import 'package:am2_library_project/screens/book_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class BookListWidget extends StatefulWidget {
  final List<Book> books;
  const BookListWidget({Key? key, required this.books}) : super(key: key);

  @override
  State<BookListWidget> createState() => _BookListWidget();
}

class _BookListWidget extends State<BookListWidget> {

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      children: widget.books.map((book) {
        return Padding(
          padding: const EdgeInsets.all(20.0),      
          child: InkWell(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => BookScreen(book: book),
                ),
              );
            },
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:Colors.white, width: 2.0)
              ),
              child: Column(
                children: [
                  SvgPicture.asset(
                    "images/book.svg", 
                    height: 80.0,
                  ),
                  Text(
                    book.title,
                    style: Theme.of(context).textTheme.bodyText1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
