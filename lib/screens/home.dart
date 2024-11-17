import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // Método de cierre de sesión corregido
  void _signOut(BuildContext context) async {
    await _auth.signOut();  // Corregido de "_singOut" a "signOut"

    // Navegar de regreso a la pantalla de inicio de sesión después de cerrar sesión
    Navigator.of(context).pushReplacementNamed('/signin');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _signOut(context),  // Llamar al método de cierre de sesión
          ),
        ],
      ),
      body: Center(
        child: const Text('Bienvenido a la pantalla principal'),
      ),
    );
  }
}