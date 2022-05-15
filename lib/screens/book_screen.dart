import 'package:am2_library_project/widgets/main_app_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../model/book.dart';

class BookScreen extends StatefulWidget {
  final Book book;
  const BookScreen({Key? key, required this.book}) : super(key: key);

  @override
  State<BookScreen> createState() => _BookScreenState();
}

class _BookScreenState extends State<BookScreen> {

  @override
  Widget build(BuildContext context) {
    final book = widget.book;

    return Scaffold(
      appBar: MainAppBar(title: book.title),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(145, 129, 242, 1),
              Color.fromARGB(255, 73, 34, 163),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SvgPicture.asset(
              'images/book.svg'
            ),
            const SizedBox(height: 40.0),
            Text(book.title),
            const SizedBox(height: 20.0),
            const Text("Descripción"),
            Text(book.description),
            const SizedBox(height: 20.0),
            const Text("Detalles"),
            Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: Text("ID:"),
                ),
                Expanded(
                  flex: 7,
                  child: Text(book.id)
                ),                
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: Text("Author:"),
                ),
                Expanded(
                  flex: 7,
                  child: Text(book.author)
                ),                
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: Text("Categoria:"),
                ),
                Expanded(
                  flex: 7,
                  child: Text(book.category)
                ),                
              ],
            ),
            Row(
              children: [
                const Expanded(
                  flex: 3,
                  child: Text("Fecha:"),
                ),
                Expanded(
                  flex: 7,
                  child: Text(DateFormat('DD/MM/yyyy').format(book.createAt))
                ),                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
