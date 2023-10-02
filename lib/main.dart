import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xffD6D58E),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Bienvenido a camsapp',
                            style:TextStyle(color:Color(0xff005C53),
                            fontSize: 40,
                            fontWeight: FontWeight.bold)
                            ),         
                const Text("Registrate"),
                GestureDetector(
                  onTap: () {},
                  child: const Text("Presioname"),
                ),
                TextFormField(),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Ingresar"))
                ],
            ),
          ),
        ),
      ),
    );
  }
}
