import 'package:am2_library_project/screens/main_navigation_menu_screen.dart';
import 'package:am2_library_project/widgets/gradient_background.dart';
import 'package:am2_library_project/screens/register_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'package:am2_library_project/services/auth.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var _haveError = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void navigateToRegister() {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute( builder: (context) => const RegisterScreen()),
      (route) => false,
    );
  }

  void navigateToMenu(Map user, String token) {
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute( builder: (context) => MainNavigationMenuScreen(user: user)),
      (route) => false,
    );
  }

  void handleLogin() async{
    final res = await login(emailController.text, passwordController.text);

    if (res.containsKey('status')) {
      if (res['status'] >= 400) {
        setState(() {
          _haveError = true;
        });
      } else {
        setState(() {
          _haveError = false;
        });
      }
    } else if (res.containsKey('user')) {
      navigateToMenu(res['user'], res['token']);
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
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Text(
                'Iniciar Sesión',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            !_haveError ? Container() :
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Error al iniciar sesión',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.red
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Correo',
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0,),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                style: Theme.of(context).textTheme.bodyText1,
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  labelStyle: Theme.of(context).textTheme.bodyText1,
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 1.0,),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateColor.resolveWith((states) => Theme.of(context).primaryColor),
                ),
                child: Text(
                  'Login',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                onPressed: handleLogin,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('¿No tienes cuenta?', style: Theme.of(context).textTheme.bodyText1),
                TextButton(
                  child: const Text(
                    'Registrarse',
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: navigateToRegister,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
