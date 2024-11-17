import 'package:flutter/material.dart';
import 'Screens/singin.dart';  // Asegúrate de que el nombre del archivo sea correcto
import 'Screens/home.dart';
import 'Screens/register.dart';  // Importa la pantalla de registro

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/signin':
        return MaterialPageRoute(builder: (_) => SignInScreen());
      case '/home':
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegisterScreen()); // Nueva ruta para registro
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}