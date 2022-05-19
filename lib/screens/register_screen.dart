import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:am2_library_project/widgets/gradient_background.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: ListView(
              children: <Widget>[
                SvgPicture.asset("images/sir.svg"),
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      labelText: 'Usuario',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      labelText: 'Contraseña',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: firstnameController,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      labelText: 'Nombre',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: lastnameController,
                    decoration: const InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                      labelText: 'Apellido',
                    ),
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Theme.of(context).primaryColor)),
                      child: const Text('Registrarse'),
                      onPressed: () {
                        print(nameController.text);
                        print(emailController.text);
                        print(passwordController.text);
                        print(firstnameController.text);
                        print(lastnameController.text);
                      },
                    )),
                Row(
                  children: <Widget>[
                    const Text(
                      '¿No tienes cuenta?',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    TextButton(
                      child: const Text(
                        'Iniciar Sesión',
                        style: TextStyle(fontSize: 15),
                      ),
                      onPressed: () {
                        //signin screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            )));
  }
}
