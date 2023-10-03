

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
            title: const Text(
              "Online Instituto Médico UPB",
              style: TextStyle(fontSize: 32, color: Color(0xFFB4BEC9)),
            ),
          ),
          Container(
            color: const Color(0xFFFFFFFF),
            height: 2,
          ),
          Container(
            color: const Color(0xff159A9C),
            child: const Text(
              "Predictor de Tumores",
              style: TextStyle(fontSize: 96, color: Color(0xFF002333)),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Añadir espacio entre los elementos
                children: [
                  const Text(
                    "Bienvenido",
                    style: TextStyle(fontSize: 40, color: Color(0xFF002333)),
                  ),
                  const SizedBox(height: 32), // Aumentar el espacio entre los elementos
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "ID",
                      labelStyle: TextStyle(color: Color(0xFF002333)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF002333)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6EEAB0),
                        ),
                        child: const Text(
                          "Ingresar",
                          style: TextStyle(color: Color(0xFF002333)),
                        ),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF6EEAB0),
                        ),
                        child: const Text(
                          "Registrarse",
                          style: TextStyle(color: Color(0xFF002333)),
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