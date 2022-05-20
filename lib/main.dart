import 'package:am2_library_project/screens/login_screen.dart';
import 'package:am2_library_project/themes/style.dart';
import 'package:flutter/material.dart';

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
      home: const LoginScreen(),
    );
  }
}
