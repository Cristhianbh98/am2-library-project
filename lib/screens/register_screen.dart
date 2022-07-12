import 'package:am2_library_project/widgets/gradient_background.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'package:am2_library_project/helpers/navigate.dart';
import 'package:am2_library_project/services/auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  final EdgeInsetsGeometry defaultEdges = const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0);
  final InputBorder defaultBorder = const OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 1.0));

  bool _haveError = false;

  void handleRegister() async {
    final resRegister = await register(
      usernameController.text, 
      emailController.text, 
      passwordController.text,
      firstNameController.text, 
      lastNameController.text,
    );

    if (resRegister['status'] < 400) {
      final res = await login(emailController.text, passwordController.text);
      navigateToMenu(res['user'], res['token'], context);
    } else {
      setState(() {
        _haveError = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: ListView(
          children: <Widget>[
            SvgPicture.asset("images/sir.svg", height: 250.0),
            const SizedBox(height: 20.0),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Text(
                'Registro Usuario',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            !_haveError ? Container() :
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Error al registrarse',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.red
                ),
              ),
            ),
            Container(
              padding: defaultEdges,
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                controller: usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  enabledBorder: defaultBorder,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: defaultEdges,
                    child: TextField(
                      style: Theme.of(context).textTheme.bodyText1,
                      controller: firstNameController,
                      decoration: InputDecoration(
                        labelText: 'Nombres',
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        enabledBorder: defaultBorder,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: defaultEdges,
                    child: TextField(
                      style: Theme.of(context).textTheme.bodyText1,
                      controller: lastNameController,
                      decoration: InputDecoration(
                        labelText: 'Apellidos',
                        labelStyle: Theme.of(context).textTheme.bodyText1,
                        enabledBorder: defaultBorder,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: defaultEdges,
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  enabledBorder: defaultBorder,
                ),
              ),
            ),
            Container(
              padding: defaultEdges,
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  enabledBorder: defaultBorder,
                ),
              ),
            ),
            Container(
              padding: defaultEdges,
              child: ElevatedButton(
                child: const Text('Registrarse'),
                onPressed: handleRegister,
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Theme.of(context).primaryColor),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('¿No tienes cuenta?', style: Theme.of(context).textTheme.bodyText1),
                TextButton(
                  child: const Text('Iniciar Sesión', style: TextStyle(fontSize: 16)),
                  onPressed: () => navigateToLogin(context),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
