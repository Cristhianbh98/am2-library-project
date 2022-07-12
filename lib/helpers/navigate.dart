import 'package:am2_library_project/screens/login_screen.dart';
import 'package:am2_library_project/screens/main_navigation_menu_screen.dart';
import 'package:am2_library_project/screens/register_screen.dart';
import 'package:flutter/material.dart';

void navigateToRegister(context) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute( builder: (context) => const RegisterScreen()),
    (route) => false,
  );
}

void navigateToLogin(context) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(builder: (context) => const LoginScreen()),
    (route) => false,
  );
}

void navigateToMenu(Map user, String token, context) {
  Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute( builder: (context) => MainNavigationMenuScreen(user: user)),
    (route) => false,
  );
}
