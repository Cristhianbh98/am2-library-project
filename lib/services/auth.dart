import 'package:am2_library_project/services/config.dart';

import 'package:http/http.dart';
import 'dart:convert';

Future login(String email, String password) async {
  try {
    final response = await post(
      Uri.parse(URI + 'user/login'), 
      body: {
        'email': email,
        'password': password,
      },
    );
    return json.decode(response.body);
  } catch(err) {
    return { 'status': 400, 'error': 'Error al iniciar sesión' };
  }
}

Future register(String username, String email, String password, String firstName, String lastName) async {
  try {
    final response = await post(
      Uri.parse(URI + 'user/'),
      body: {
        'username': username,
        'email': email,
        'password': password,
        'firstName': firstName,
        'lastName': lastName,
      }
    );
    return json.decode(response.body);
  } catch(err) {
    return { 'status': 400, 'error': 'Error al registrarse' };
  }
}
