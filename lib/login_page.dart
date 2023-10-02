

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override 
  Widget build(BuildContext context){
    return  Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body:  Column(
        children: [
          //Image.asset('assets/logo_tumor.png'),
          const Text ("Predictor de tumores",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                             fontSize: 96,
                             color:  Color(0xFF002333)
                      ),
                    ),
          TextFormField(),
          const Spacer(),
          const SizedBox(
            height: 60,
            width: 120,
            child: InkWell(),
          ),
          const Spacer(),
        ],
       
      
      )     
    );
  }
} 