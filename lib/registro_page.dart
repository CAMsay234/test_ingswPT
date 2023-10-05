import 'package:flutter/material.dart';

class RegistroPage extends StatelessWidget {
  const RegistroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
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
          Container()
        ],
      )
    );
  }
}