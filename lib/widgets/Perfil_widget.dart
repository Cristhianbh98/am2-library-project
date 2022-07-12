import 'dart:ffi';

import 'package:am2_library_project/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:am2_library_project/widgets/gradient_background.dart';

class Perfilwidget extends StatefulWidget {
  const Perfilwidget({
    Key? key,
    required this.user,
  }) : super(key: key);

  final Map user;

  @override
  State<Perfilwidget> createState() => _Perfilwidget();
}

class _Perfilwidget extends State<Perfilwidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void logout() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute( builder: (context) => const LoginScreen()),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(0, 247, 240, 240),
        body: ListView(
          children: <Widget>[
            const SizedBox(height: 40.0),
            CircleAvatar(              
              radius: 50,
              child: ClipRRect(
                child: Image.network(widget.user['image'], fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(50.0),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                widget.user['firstName'] + ' ' + widget.user['lastName'],
                style: const TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Editar Cuenta',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Eliminar cuenta',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Cambiar contraseña',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
                ElevatedButton(
                  onPressed: logout,
                  child: Text(
                    'Cerrar sesión',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ),
              ],
            ),            
          ],
        ),
      ),
    );
  }
}
