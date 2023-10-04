
import 'package:flutter_application_1/menu_doctor_page.dart';
import 'package:flutter_application_1/registro_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          AppBar(
            backgroundColor: const Color(0xFFFFFFFF),
            title: Row(
              children: [
                Image.asset(
                  'assets/logo_corazon.png',
                  width: 40,
                  height: 40,
                ),
                const SizedBox(width: 8),
                const Text(
                  "Online Instituto Médico UPB",
                  style: TextStyle(fontSize: 32, color: Color(0xFFB4BEC9)),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xFFFFFFFF),
            height: 5,
          ),
          Container(
            height: 250,
            color: const Color(0xff159A9C),
            child: Row( // Usar un Row para alinear la imagen a la derecha y el texto a la izquierda
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Alinear elementos a los extremos
              children: [
                const Text(
                  "Predictor de Tumores",
                  style: TextStyle(fontSize: 96, color: Color(0xFF002333)),
                ),
                Image.asset('assets/logo_tumor.png'), // Imagen a la derecha
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 10), // Mover "Bienvenido" más abajo
                  const Text(
                    "Bienvenido",
                    style: TextStyle(fontSize: 60, color: Color(0xFF002333)),
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "ID",
                      labelStyle: TextStyle(color: Color(0xFF002333)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF002333)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30), // Mover el campo "ID" más abajo
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MenuDoctorPage(),
                            ),
                          );},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6EEAB0),
                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                        ),
                        child: const Text(
                          "Ingresar",
                          style: TextStyle(fontSize: 20, color: Color(0xFF002333)),
                        ),
                      ),
                      const SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {
                          // Navegar a la página de registro cuando se presiona "Registrar"
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const RegistroPage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6EEAB0),
                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                        ),
                        child: const Text(
                          "Registrarse",
                          style: TextStyle(fontSize: 20, color: Color(0xFF002333)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}






