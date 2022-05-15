import 'package:am2_library_project/themes/style.dart';
import 'package:am2_library_project/widgets/main_app_bar.dart';
import 'package:am2_library_project/screens/book_screen.dart';
import 'package:flutter/material.dart';
import './model/book.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: primaryTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: widget.title),
      body: Center(
        child: ElevatedButton(
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
      ), 
    );
  }
}
