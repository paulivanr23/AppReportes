import 'package:flutter/material.dart';
import 'custom_button.dart'; 
import 'login_screen.dart';
import 'register_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              "Aplicación de Reportes",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
        
            //Boton login
            BotonPersonalizado(
              texto: 'Login',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              colorFondo: Color.fromRGBO(132, 0, 255, 1),
              colorTexto: Colors.white,
              paddingHorizontal: 20,
              paddingVertical: 8,
            ),
            const SizedBox(height: 10),

            //Boton Sign Up
            BotonPersonalizado(
              texto: 'Sign Up',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RegisterScreen(),
                  ),
                );
              },
              colorFondo: Colors.white,
              colorTexto: Color.fromRGBO(132, 0, 255, 1),
              colorBorde: Color.fromRGBO(132, 0, 255, 1),
              paddingHorizontal: 20,
              paddingVertical: 8,
            ),
            
          ],
        ),
      ),
    );
  }
}