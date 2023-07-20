// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        title: Text(
          'Alejando Perez',
          style: GoogleFonts.raleway(
            textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: nodooControl(),
      /* Column(
        children: [
          nodooControl(),
          tarifaServicio(),
        ],
      ), */
    );
  }
}

Widget nodooControl() {
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      backgroundColor: Color.fromARGB(255, 32, 226, 165),
      alignment: Alignment.center,
      elevation: 3.0,
      maximumSize: Size(100, 50),
      padding: EdgeInsets.all(5.0));

  return ListView(
    padding: const EdgeInsets.all(20.0),
    children: <Widget>[
      Text(
        'Nodoo Control',
        style: GoogleFonts.raleway(
          textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      Card(
          color: Colors.white,
          child: Column(
            children: [
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                        child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.people_outline_outlined,
                            color: Color.fromARGB(255, 170, 197, 242),
                            size: 30,
                          ),
                          onPressed: () {},
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              '200+',
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                color: Color.fromARGB(255, 32, 78, 226),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                            ),
                            Text('Conexiones',
                                style: GoogleFonts.raleway(
                                    textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                )))
                          ],
                        ),
                      ],
                    )),
                  ),
                  Expanded(
                      child: Container(
                          child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.local_shipping_outlined,
                          color: Color.fromARGB(255, 170, 197, 242),
                          size: 30,
                        ),
                        onPressed: () {},
                      ),
                      Column(
                        children: <Widget>[
                          Text('500+',
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                color: Color.fromARGB(255, 32, 78, 226),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              )),
                              textAlign: TextAlign.left),
                          Text('Fletes Hechos',
                              style: GoogleFonts.raleway(
                                  textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              )))
                        ],
                      )
                    ],
                  ))),
                ],
              ),
              Divider(
                indent: 15.0,
                endIndent: 15.0,
                color: Color.fromARGB(255, 150, 150, 150),
              ),
              Row(
                children: <Widget>[
                  Container(
                      child: Row(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.folder_shared_outlined,
                          color: Color.fromARGB(255, 150, 150, 150),
                          size: 20,
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'Validación',
                        style: GoogleFonts.raleway(
                            textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                    ],
                  )),
                  Container(
                    margin: EdgeInsets.only(left: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 198, 250, 201),
                    ),
                    height: 20,
                    width: 50,
                    child: Row(
                      children: [
                        Icon(
                          Icons.lock_outline,
                          color: Color.fromARGB(255, 150, 150, 150),
                          size: 15,
                        ),
                        Text(
                          ' 5/5',
                          style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Color.fromARGB(255, 150, 150, 150),
                        size: 25,
                      ),
                      onPressed: () {},
                    ),
                  ))
                ],
              ),
            ],
          )),
      ElevatedButton(
        style: raisedButtonStyle,
        child: Row(
          children: <Widget>[
            Icon(Icons.phone_forwarded_outlined),
            Text(
              '  Llamar',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
        onPressed: () {},
      ),
      Text(
        'Tarifa de Servicio',
        style: GoogleFonts.raleway(
          textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      Card(
        color: Colors.white,
        child: Text('No puedo, esto está muy dificil'),
      ),
    ],
  );
}
/* 
Widget tarifaServicio() {
  return ListView(
    padding: const EdgeInsets.all(20.0),
    children: <Widget>[
      Text(
        'Tarifa de Servicio',
        style: GoogleFonts.raleway(
          textStyle: TextStyle(fontSize: 22.0, fontWeight: FontWeight.bold),
        ),
      ),
      Card(
        color: Colors.white,
        child: Text('This is one more card'),
      ),
    ],
  );
} */