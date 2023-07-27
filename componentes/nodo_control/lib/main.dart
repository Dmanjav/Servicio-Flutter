// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, no_leading_underscores_for_local_identifiers, prefer_const_declarations, prefer_final_fields, dead_code

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'requirements.dart';
import 'app_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Detalles Camionero',
      theme: ThemeData(
        colorSchemeSeed: Color.fromARGB(255, 73, 118, 232),
        scaffoldBackgroundColor: Color.fromARGB(255, 247, 249, 251),
        useMaterial3: false,
      ),
      home: Cards(),
    );
  }
}

class Cards extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CardsState();
  }
}

class CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Color.fromARGB(255, 73, 118, 232),
          title: appBarra(),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/lines.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),),
          
      body: nodooControl(),
    );
  }
}

Widget nodooControl() {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      //propiedades del botón)
      backgroundColor: Color.fromARGB(255, 32, 226, 165),
      elevation: 5.0,
      padding: EdgeInsets.all(5.0),
      maximumSize: Size(100, 50));

  return ListView(
    padding: const EdgeInsets.all(20.0),
    children: <Widget>[
      Text(
        'Nodoo Control',
        style: GoogleFonts.raleway(
          textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(height: 10),
      requirements(),
      SizedBox(height: 10),
      ElevatedButton.icon(
/* No le puedo cambiar el tamaño al boton, no se porqué agh, dios mio*/
        icon: Icon(Icons.phone_forwarded_outlined),
        onPressed: () {},
        style: raisedButtonStyle,
        label: Text('Llamar'),
      ),
      SizedBox(height: 10),
      Text(
        'Tarifa de Servicio',
        style: GoogleFonts.raleway(
          textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(height: 10),
      Card(
        elevation: 5.0,
        color: Colors.white,
        child: Text('No puedo, esto está muy dificil'),
      ),
    ],
  );
}