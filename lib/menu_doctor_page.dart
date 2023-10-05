import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';

class MenuDoctorPage extends StatefulWidget {
  const MenuDoctorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MenuDoctorPageState createState() => _MenuDoctorPageState();
}

class _MenuDoctorPageState extends State<MenuDoctorPage> {
  XFile? _image; // Almacenar la imagen seleccionada por el usuario

  // ignore: unused_element
  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery); // Puedes cambiar a ImageSource.camera para tomar una foto

    setState(() {
      _image = pickedFile;
    });
  }
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 255, 255, 255),
      appBar: AppBar(
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
      body: Column(
        children: [
          Container(
            color: const Color(0xFFFFFFFF),
            height: 5,
          ),
          Container(
        height: 250,
        color: const Color(0xff159A9C),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: const Color(0xff159A9C), // Color de fondo azul agua marina
                child: Center(
                  child: GestureDetector(
                    onTap: _getImage, // Llama a la función para seleccionar una imagen al tocar el contenedor
                    child:const  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_a_photo,
                          size: 40,
                          color: Colors.white, // Color del icono
                        ),
                          Text(
                          "Añadir imagen",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: const Color(0xff159A9C), // Color de fondo del lado derecho
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                        Row(
                          children: [
                            const Text(
                              "ID: ",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Container(
                              color: Colors.grey, // Color de fondo gris para el campo "ID"
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                "123456",
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          
                          children: [
                            const Text(
                              "Nombre: ",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Container(
                              color: Colors.grey, // Color de fondo gris para el campo "Nombre"
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                "Juan Pérez",
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          
                          children: [
                            const Text(
                              "Residencia: ",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Container(
                              color: Colors.grey, // Color de fondo gris para el campo "Residencia"
                              padding: const EdgeInsets.all(8),
                              child:const  Text(
                                "Medellín",
                                style: TextStyle(fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          
                          children: [
                            const Text(
                              "Especialidad: ",
                              style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Container(
                              color: Colors.grey, // Color de fondo gris para el campo "Especialidad"
                              padding: const EdgeInsets.all(8),
                              child: const Text(
                                "Cardiología",
                                style: TextStyle(fontSize: 20, color: Colors.white),
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
          ),
            const  SizedBox(height: 125), // Espacio entre el contenido anterior y los botones

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
              onPressed: () {
                // Acción cuando se presiona "Registrar Paciente"
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6EEAB0), // Fondo verde fosforescente
                  padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 60),// Tamaño del botón cuadrado
                  elevation: 10, // Valor de elevación
                ),
                child:const Text(
                  "Registrar \nPaciente",
                  textAlign: TextAlign.center, // Alinea el texto al centro dentro del botón
                  style: TextStyle(
                    fontSize: 20,
                    color:  Color(0xFF002333), // Texto en azul oscuro
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                // Acción cuando se presiona "Historias Clínicas"
                },
                style: ElevatedButton.styleFrom(
                  
                  backgroundColor: const Color(0xFF6EEAB0), // Fondo verde fosforescente
                  padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 60),// Tamaño del botón cuadrado
                  elevation: 10, // Valor de elevación
                ),
                child: const Text(
                  "Historias \nClínicas",
                  textAlign: TextAlign.center, // Alinea el texto al centro dentro del botón
                  style: TextStyle(
                    fontSize: 20,
                    color:  Color(0xFF002333), // Texto en azul oscuro
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Acción cuando se presiona "Generar Diagnóstico"
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF6EEAB0), // Fondo verde fosforescente
                  padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 60), // Tamaño del botón cuadrado
                  elevation: 10, // Valor de elevación
                ),
                child:const  Text(
                  "Generar \nDiagnóstico",
                  textAlign: TextAlign.center, // Alinea el texto al centro dentro del botón
                  style: TextStyle(
                    fontSize: 20,
                    color:  Color(0xFF002333), // Texto en azul oscuro
                    ),
                ),
              ),
            ],
          ),
        ],
     ),   
    ); 
  }
}
