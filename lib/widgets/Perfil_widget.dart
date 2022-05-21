import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:am2_library_project/widgets/gradient_background.dart';

class Perfilwidget extends StatefulWidget {
  const Perfilwidget({Key? key}) : super(key: key);

  @override
  State<Perfilwidget> createState() => _Perfilwidget();
}

class _Perfilwidget extends State<Perfilwidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Scaffold(
            backgroundColor: Color.fromARGB(0, 247, 240, 240),
            body: ListView(
              children: <Widget>[
                SvgPicture.asset(
                  "images/perfil.svg",
                  height: 250,
                  width: 300,
                ),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                ),
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    child: const Text(
                      'Luis Méndez',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                TextButton(
                  onPressed: () {
                    //Eliminar cuenta
                  },
                  child: const Text(
                    'Eliminar cuenta',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //Cambiar contraseña
                  },
                  child: const Text(
                    'Cambiar contraseña',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //Cerrar sesión
                  },
                  child: const Text(
                    'Cerrar sesión',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ],
            )));
  }
}
