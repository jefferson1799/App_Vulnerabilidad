import 'package:ejemplo/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'routes.dart';  // Asegúrate de importar tu archivo de rutas

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ecopuntos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // Define la ruta inicial para la pantalla de inicio de sesión
      initialRoute: '/signin',  
      // Usa el generador de rutas personalizado
      onGenerateRoute: Routes.generateRoute,  // Corregido a "generateRoute" (sin mayúscula en "g")
    );
  }
}