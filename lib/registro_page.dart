// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'dart:core';
import 'package:intl/intl.dart';



class RegistroPage extends StatefulWidget {
  const RegistroPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RegistroPageState createState() => _RegistroPageState();
}

class _RegistroPageState extends State<RegistroPage> {
  String? selectedSexo; // Valor inicial seleccionado

  List<String> opcionesSexo = ['Masculino', 'Femenino', 'Otro'];
  String? selectedRh; // Variable para almacenar la opción seleccionada

  List<String> opcionesRh = [
    'O+',
    'O-',
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-'
  ]; // Opciones disponibles // Opciones disponibles
  XFile? _image;
  DateTime selectedDate = DateTime.now();
  TextEditingController fechaNacimientoController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        fechaNacimientoController.text =
            DateFormat('yyyy-MM-dd').format(selectedDate);
      });
    }
  }
  

  // ignore: unused_element
  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(
        source: ImageSource
            .gallery); // Puedes cambiar a ImageSource.camera para tomar una foto

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
      body: Column(children: [
        Container(
          color: const Color(0xFFB4BEC9),
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
                  color: const Color(
                      0xff159A9C), // Color de fondo azul agua marina
                  child: Center(
                    child: GestureDetector(
                      onTap:
                          _getImage, // Llama a la función para seleccionar una imagen al tocar el contenedor
                      child: const Column(
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
                  color: const Color(
                      0xff159A9C), // Color de fondo del lado derecho
                  padding: const EdgeInsets.all(50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Nombre: ",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Container(
                            color: Colors
                                .grey, // Color de fondo gris para el campo "Nombre"
                            padding: const EdgeInsets.all(8),
                            child: const Text(
                              "Pablo Rodriguez",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          const Text(
                            "Cédula: ",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Container(
                            color: Colors
                                .grey, // Color de fondo gris para el campo "Nombre"
                            padding: const EdgeInsets.all(8),
                            child: const Text(
                              "1000408123",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "Correo: ",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Container(
                            color: Colors
                                .grey, // Color de fondo gris para el campo "Cédula"
                            padding: const EdgeInsets.all(8),
                            child: const Text(
                              "pablor@gmail.com",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          const Text(
                            "Contacto: ",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Container(
                            color: Colors
                                .grey, // Color de fondo gris para el campo "Cédula"
                            padding: const EdgeInsets.all(8),
                            child: const Text(
                              "3218123123",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
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
    const SizedBox(
              height: 100,
            ), // Espacio entre el contenido anterior y los datos a ingresar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Edad",
                      labelStyle: TextStyle(color: Color(0xFF002333)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF002333)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    controller: fechaNacimientoController,
                    onTap: () => _selectDate(context),
                    decoration: const InputDecoration(
                      labelText: 'Fecha de Nacimiento',
                    ),
                  ),
                ),
                const Text(
                  "Rh:",
                  style: TextStyle(fontSize: 20,  color: Color(0xFF002333)),
                ),
                const SizedBox(
                  width: 1,
                ), // Espacio entre el título y la lista desplegable
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 6,
                  ), // Ajusta el espacio vertical según tus preferencias
                  child: DropdownButton<String>(
                    value: selectedRh,
                    hint: const Text("Selecciona el Rh"),
                    onChanged: (String? newValue) {
                      // Cuando se selecciona una opción, actualiza la variable selectedRh
                      setState(() {
                        selectedRh = newValue;
                      });
                    },
                    items: opcionesRh.map((String opcion) {
                      return DropdownMenuItem<String>(
                        value: opcion,
                        child: Text(opcion),
                      );
                    }).toList(),
                  ),
                ),
                const Text(
                  "Sexo:",
                  style: TextStyle(fontSize: 20, color: Color(0xFF002333)),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 10.0), // Ajusta el espacio aquí
                  child: DropdownButton<String?>(
                    value: selectedSexo,
                    hint: const Text("Selecciona el sexo"),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedSexo = newValue;
                      });
                    },
                    items: opcionesSexo.map<DropdownMenuItem<String?>>((String value) {
                      return DropdownMenuItem<String?>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "País",
                      labelStyle: TextStyle(color: Color(0xFF002333)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF002333)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Departamento",
                      labelStyle: TextStyle(color: Color(0xFF002333)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF002333)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Ciudad",
                      labelStyle: TextStyle(color: Color(0xFF002333)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF002333)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 300,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Dirección",
                      labelStyle: TextStyle(color: Color(0xFF002333)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF002333)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Acción cuando se presiona "Guardar"
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        const Color(0xFF6EEAB0), // Fondo verde fosforescente
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40), // Tamaño del botón cuadrado
                    elevation: 10, // Valor de elevación
                  ),
                  child: const Text(
                    "Guardar",
                    textAlign: TextAlign
                        .center, // Alinea el texto al centro dentro del botón
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF002333), // Texto en azul oscuro
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



